pac55xx_irq = custom_target(
    'pac55xx' + ' '.join(outfiles),
    output: outfiles,
    command: [irq2nvic, '@SOURCE_ROOT@', '@BUILD_ROOT@', 'pac55xx'],
)
