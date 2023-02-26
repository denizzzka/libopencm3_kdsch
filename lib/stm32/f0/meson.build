stm32f0_irq = custom_target(
    'stm32f0' + ' '.join(outfiles),
    input: stm32f0_json,
    output: outfiles,
    command: [irq2nvic, '@INPUT@', '@BUILD_ROOT@', 'stm32/f0'],
)
