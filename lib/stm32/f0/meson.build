stm32f0_irq = custom_target(
    'stm32f0' + ' '.join(outfiles),
    output: outfiles,
    command: [irq2nvic, '@SOURCE_ROOT@', '@BUILD_ROOT@', 'stm32/f0'],
)
