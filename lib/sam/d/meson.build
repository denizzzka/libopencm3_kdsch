# The script also generates vector_nvic.c, but we do not add it to
# src because it is not a complete compilation unit. It's included by
# another file.

outfiles = ['nvic.h', 'irqhandlers.h']
src += [
    files('port.c'),
    custom_target(
        ' '.join(outfiles),
        output: outfiles,
        command: [irq2nvic, '@SOURCE_ROOT@', '@BUILD_ROOT@', target],
    ),
]
