msp432e4_irq = custom_target(
    'msp432e4' + ' '.join(outfiles),
    output: outfiles,
    command: [irq2nvic, '@SOURCE_ROOT@', '@BUILD_ROOT@', 'msp432/e4'],
)
