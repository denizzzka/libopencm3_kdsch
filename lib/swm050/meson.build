swm050_irq = custom_target(
    'swm050' + ' '.join(outfiles),
    input: swm050_json,
    output: outfiles,
    command: [irq2nvic, '@INPUT@', '@BUILD_ROOT@', 'swm050'],
)
