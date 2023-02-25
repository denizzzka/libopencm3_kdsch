swm050_irq = custom_target(
    'swm050' + ' '.join(outfiles),
    output: outfiles,
    command: [irq2nvic, '@SOURCE_ROOT@', '@BUILD_ROOT@', 'swm050'],
)
