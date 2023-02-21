project(
    'libopencm3',
    'c',
    version: '0.8.0',
    default_options: ['c_std=c99', 'warning_level=2', 'optimization=s'],
)

add_project_arguments(
    '-ffunction-sections',
    '-fdata-sections',
    '-fno-common',
    '-Wstrict-prototypes',
    language: 'c',
)

ssmod = import('sourceset')
ss = ssmod.source_set()

target = meson.get_external_property('target')
modules = meson.get_external_property('modules', [])

# The script also generates vector_nvic.c, but we do not add it to
# src because it is not a complete compilation unit. It's included by
# another file.
outfiles = ['nvic.h', 'irqhandlers.h']
src = []
src += custom_target(
    ' '.join(outfiles),
    output: outfiles,
    command: [find_program('scripts/irq2nvic_h.py'), '@SOURCE_ROOT@', '@BUILD_ROOT@', target],
)

subdir('lib/cm3')
subdir('lib' / target)

foreach module : modules
    subdir('lib' / module)
endforeach

lib = static_library(
    'opencm3_' + target.replace('/', ''),
    sources: src,
    native: false,
    build_by_default: true,
    include_directories: 'include',
)
