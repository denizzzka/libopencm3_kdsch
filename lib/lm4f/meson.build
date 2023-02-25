lm4f_irq = custom_target(
    'lm4f' + ' '.join(outfiles),
    output: outfiles,
    command: [irq2nvic, '@SOURCE_ROOT@', '@BUILD_ROOT@', 'lm4f'],
)
