lpc17xx_irq = custom_target(
    'lpc17xx' + ' '.join(outfiles),
    input: lpc17xx_json,
    output: outfiles,
    command: [irq2nvic, '@INPUT@', '@BUILD_ROOT@', 'lpc17xx'],
)
