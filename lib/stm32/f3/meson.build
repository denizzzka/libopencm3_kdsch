stm32f3_irq = custom_target(
    'stm32f3' + ' '.join(outfiles),
    output: outfiles,
    command: [irq2nvic, '@SOURCE_ROOT@', '@BUILD_ROOT@', 'stm32/f3'],
)
