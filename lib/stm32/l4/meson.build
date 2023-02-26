stm32l4_irq = custom_target(
    'stm32l4' + ' '.join(outfiles),
    input: stm32l4_json,
    output: outfiles,
    command: [irq2nvic, '@INPUT@', '@BUILD_ROOT@', 'stm32/l4'],
)
