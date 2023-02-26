stm32l1_irq = custom_target(
    'stm32l1' + ' '.join(outfiles),
    input: stm32l1_json,
    output: outfiles,
    command: [irq2nvic, '@INPUT@', '@BUILD_ROOT@', 'stm32/l1'],
)
