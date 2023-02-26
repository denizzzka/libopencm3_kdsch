stm32f3_irq = custom_target(
    'stm32f3' + ' '.join(outfiles),
    input: stm32f3_json,
    output: outfiles,
    command: [irq2nvic, '@INPUT@', '@BUILD_ROOT@', 'stm32/f3'],
)
