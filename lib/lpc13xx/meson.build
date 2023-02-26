lpc13xx_irq = custom_target(
    'lpc13xx' + ' '.join(outfiles),
    input: lpc13xx_json,
    output: outfiles,
    command: [irq2nvic, '@INPUT@', '@BUILD_ROOT@', 'lpc13xx'],
)
