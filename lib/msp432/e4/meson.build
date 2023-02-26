msp432e4_irq = custom_target(
    'msp432e4' + ' '.join(outfiles),
    input: msp432e4_json,
    output: outfiles,
    command: [irq2nvic, '@INPUT@', '@BUILD_ROOT@', 'msp432/e4'],
)
