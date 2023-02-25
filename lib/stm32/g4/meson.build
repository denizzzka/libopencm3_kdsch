stm32g4_irq = custom_target(
    'stm32g4' + ' '.join(outfiles),
    output: outfiles,
    command: [irq2nvic, '@SOURCE_ROOT@', '@BUILD_ROOT@', 'stm32/g4'],
)
