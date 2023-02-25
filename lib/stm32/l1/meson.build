stm32l1_irq = custom_target(
    'stm32l1' + ' '.join(outfiles),
    output: outfiles,
    command: [irq2nvic, '@SOURCE_ROOT@', '@BUILD_ROOT@', 'stm32/l1'],
)
