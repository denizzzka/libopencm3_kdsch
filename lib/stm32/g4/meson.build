stm32g4_irq = custom_target(
    'stm32g4' + ' '.join(outfiles),
    input: stm32g4_json,
    output: outfiles,
    command: [irq2nvic, '@INPUT@', '@BUILD_ROOT@', 'stm32/g4'],
)
