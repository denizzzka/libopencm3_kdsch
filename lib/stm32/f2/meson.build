stm32f2_irq = custom_target(
    'stm32f2' + ' '.join(outfiles),
    input: stm32f2_json,
    output: outfiles,
    command: [irq2nvic, '@INPUT@', '@BUILD_ROOT@', 'stm32/f2'],
)
