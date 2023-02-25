stm32l0_irq = custom_target(
    'stm32l0' + ' '.join(outfiles),
    output: outfiles,
    command: [irq2nvic, '@SOURCE_ROOT@', '@BUILD_ROOT@', 'stm32/l0'],
)
