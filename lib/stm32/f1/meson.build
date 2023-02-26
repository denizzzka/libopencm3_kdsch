stm32f1_irq = custom_target(
    'stm32f1' + ' '.join(outfiles),
    input: stm32f1_json,
    output: outfiles,
    command: [irq2nvic, '@INPUT@', '@BUILD_ROOT@', 'stm32/f1'],
)
