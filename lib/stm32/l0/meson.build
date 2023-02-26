stm32l0_irq = custom_target(
    'stm32l0' + ' '.join(outfiles),
    input: stm32l0_json,
    output: outfiles,
    command: [irq2nvic, '@INPUT@', '@BUILD_ROOT@', 'stm32/l0'],
)
