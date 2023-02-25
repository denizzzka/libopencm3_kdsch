lm3s_irq = custom_target(
    'lm3s' + ' '.join(outfiles),
    output: outfiles,
    command: [irq2nvic, '@SOURCE_ROOT@', '@BUILD_ROOT@', 'lm3s'],
)
lm4f_irq = []
