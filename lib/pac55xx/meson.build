pac55xx_irq = custom_target(
    'pac55xx' + ' '.join(outfiles),
    input: pac55xx_json,
    output: outfiles,
    command: [irq2nvic, '@INPUT@', '@BUILD_ROOT@', 'pac55xx'],
)
