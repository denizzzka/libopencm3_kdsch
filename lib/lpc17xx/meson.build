lpc17xx_irq = custom_target(
    'lpc17xx' + ' '.join(outfiles),
    output: outfiles,
    command: [irq2nvic, '@SOURCE_ROOT@', '@BUILD_ROOT@', 'lpc17xx'],
)
