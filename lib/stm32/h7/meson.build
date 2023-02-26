stm32h7_irq = custom_target(
    'stm32h7' + ' '.join(outfiles),
    input: stm32h7_json,
    output: outfiles,
    command: [irq2nvic, '@INPUT@', '@BUILD_ROOT@', 'stm32/h7'],
)
