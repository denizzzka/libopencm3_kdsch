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
    '-fno-pic',
    language: 'c',
)

target = meson.get_external_property('target')

src = []

irq2nvic = find_program('scripts/irq2nvic_h.py')

subdir('lib/cm3')
subdir('lib' / target)

lib = static_library(
    'opencm3_' + target.replace('/', ''),
    src,
    native: false,
    build_by_default: true,
    include_directories: 'include',
)
