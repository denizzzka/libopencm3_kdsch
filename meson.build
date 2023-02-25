project(
    'libopencm3',
    'c',
    version: '0.8.0',
    default_options: ['c_std=c99', 'warning_level=2', 'optimization=s'],
)

inc = include_directories('include')

# The script also generates vector_nvic.c, but this file is not
# listed in outfiles because it is not a complete compilation unit.
# It's included by another file.
outfiles = ['nvic.h', 'irqhandlers.h']
irq2nvic = find_program('scripts/irq2nvic_h.py')

subdir('lib')
