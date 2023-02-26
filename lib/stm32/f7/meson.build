stm32f7_irq = custom_target(
    'stm32f7' + ' '.join(outfiles),
    input: stm32f7_json,
    output: outfiles,
    command: [irq2nvic, '@INPUT@', '@BUILD_ROOT@', 'stm32/f7'],
)
