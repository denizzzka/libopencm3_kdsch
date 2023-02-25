lpc13xx_irq = custom_target(
    'lpc13xx' + ' '.join(outfiles),
    output: outfiles,
    command: [irq2nvic, '@SOURCE_ROOT@', '@BUILD_ROOT@', 'lpc13xx'],
)
