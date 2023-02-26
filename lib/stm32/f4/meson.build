stm32f4_irq = custom_target(
    'stm32f4' + ' '.join(outfiles),
    input: stm32f4_json,
    output: outfiles,
    command: [irq2nvic, '@INPUT@', '@BUILD_ROOT@', 'stm32/f4'],
)
