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

target = meson.get_external_property('target', 'stm32/f4')

inc = include_directories('include')
irq2nvic = find_program('scripts/irq2nvic_h.py')

subdir('lib')
