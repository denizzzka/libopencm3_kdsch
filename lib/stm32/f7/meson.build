stm32f7_irq = custom_target(
    'stm32f7' + ' '.join(outfiles),
    output: outfiles,
    command: [irq2nvic, '@SOURCE_ROOT@', '@BUILD_ROOT@', 'stm32/f7'],
)
