outfiles = ['vector_nvic.c', 'nvic.h', 'irqhandlers.h']
src += [
    files('port.c'),
    custom_target(
        ' '.join(outfiles),
        output: outfiles,
        command: [irq2nvic, '@SOURCE_ROOT@', '@BUILD_ROOT@', target],
    ),
]
