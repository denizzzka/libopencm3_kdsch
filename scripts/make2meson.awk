#!/usr/bin/awk -f

# Run like this:
#
#     ./scripts/make2meson.awk $(find lib -name Makefile | sort) >lib/meson.build
#

function append(array, value) {
	array[length(array)] = value
}

# lib/stm32/f4/Makefile → stm32/f4
function makefile_path_target_segment(filename) {
	segment = filename
	sub("lib/", "", segment)
	sub("/Makefile", "", segment)
	return segment
}

# stm32/f4 → stm32f4
function segment_to_name(segment) {
	name = segment
	sub("/", "", name)
	return name
}

# stm32/f4 → [stm32, f4]
function segment_dirs(segment, dirs) {
	split(segment, dirs, "/")
}

BEGIN {
	print("subdir('cm3')")
	print("")
	print("targets = []")
	print("")
}

BEGINFILE {
	segment = makefile_path_target_segment(FILENAME)
	name = segment_to_name(segment)
	segment_dirs(segment, dirs)
	delete sources
	delete c_args
	delete fp_args
	delete defines
}

# These patterns assume no trailing whitespace after a backslash.

/^TGT_CFLAGS/, /[^\\]$/ {
	for (field = 1; field <= NF; field++) {
		if ($field ~ /^-m/) {
			append(c_args, $field)
		} else if ($field ~ /^-D/) {
			append(defines, $field)
		}
	}
}

/^FP_FLAGS/, /[^\\]$/ {
	for (field = 1; field <= NF; field++) {
		if ($field ~ /^-m/) {
			append(fp_args, $field)
		}
	}
}

/^OBJS/ {
	for (field = 3; field <= NF; field++) {
		object = $field
		sub("\\.o", ".c", object)

		if (name ~ /sam/ && object ~ /pmc/) {
			append(sources, sprintf("%s/common/%s", dirs[1], object))
		} else if (name ~ /nrf/ && object ~ /gpio|ppi|rtc|timer|uart/) {
			append(sources, sprintf("%s/common/%s", dirs[1], object))
		} else if (object ~ /st_usbfs_v|^can/ || name ~ /lpc43xx/) {
			append(sources, sprintf("%s/%s", dirs[1], object))
		} else if (object ~ /crc_v2|st_usbfs_core|dmamux/) {
			append(sources, sprintf("%s/common/%s", dirs[1], object))
		} else if (object ~ /usb/) {
			append(sources, sprintf("usb/%s", object))
		} else if (object ~ /common/) {
			if (name ~ /gd32/) {
				append(sources, sprintf("stm32/common/%s", object))
			} else {
				append(sources, sprintf("%s/common/%s", dirs[1], object))
			}
		} else if (object ~ /mac|phy/) {
			append(sources, sprintf("ethernet/%s", object))
		} else if (object ~ /assert|vector/) {
			# This is handled by subdir('cm3')
		} else {
			append(sources, sprintf("%s/%s", segment, object))
		}
	}
}

ENDFILE {
	asort(sources)
	asort(c_args)
	asort(fp_args)
	asort(defines)

	if (name ~ /lm4f/) {
		printf("%s_irq = []\n", name) >subdir_path
	} else {
		subdir_path = "lib/" segment "/meson.build"
		printf("%s_irq = custom_target(\n", name) >subdir_path
		printf("    '%s' + ' '.join(outfiles),\n", name) >>subdir_path
		printf("    input: %s_json,\n", name) >>subdir_path
		print ("    output: outfiles,") >>subdir_path
		printf("    command: [irq2nvic, '@INPUT@', '@BUILD_ROOT@', '%s'],\n", segment) >>subdir_path
		print (")") >>subdir_path
	
		printf("subdir('%s')\n\n", segment)
	}

	print("targets += {")
	printf("    'name': '%s',\n", name)
	print("    'defines': [")

	for (i in defines) {
		printf("        '%s',\n", defines[i])
	}

	print("    ],")
	print("    'c_args': [")

	for (i in c_args) {
		printf("        '%s',\n", c_args[i])
	}

	print("    ],")
	print("    'fp_args': [")

	for (i in fp_args) {
		printf("        '%s',\n", fp_args[i])
	}

	print("    ],")
    	printf("    'src': src_cm3 + %s_irq + files(\n", name)

	for (i in sources) {
		printf("        '%s',\n", sources[i])
	}

	print("    ),")
	print("}\n")
}

END {
	print("foreach target : targets")
	print("    # TODO: allow overriding c_args with CFLAGS and fp_args with FP_FLAGS")
	print("    # TODO: don't use an array for all the targets")
	print("    set_variable(target['name'], declare_dependency(include_directories: inc, link_with: static_library(")
	print("        'opencm3_' + target['name'],")
	print("        sources: target['src'],")
	print("        c_args: target['fp_args'] + target['c_args'] + target['defines'],")
	print("        link_args: target['fp_args'] + target['c_args'],")
	print("        native: false,")
	print("        include_directories: inc,")
	print("        build_by_default: not meson.is_subproject(),")
	print("    )))")
	print("endforeach")
}
