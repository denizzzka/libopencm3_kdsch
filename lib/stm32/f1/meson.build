stm32f1_irq = custom_target(
    'stm32f1' + ' '.join(outfiles),
    output: outfiles,
    command: [irq2nvic, '@SOURCE_ROOT@', '@BUILD_ROOT@', 'stm32/f1'],
)
