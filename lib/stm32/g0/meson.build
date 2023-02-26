stm32g0_irq = custom_target(
    'stm32g0' + ' '.join(outfiles),
    input: stm32g0_json,
    output: outfiles,
    command: [irq2nvic, '@INPUT@', '@BUILD_ROOT@', 'stm32/g0'],
)
