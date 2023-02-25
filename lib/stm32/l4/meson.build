stm32l4_irq = custom_target(
    'stm32l4' + ' '.join(outfiles),
    output: outfiles,
    command: [irq2nvic, '@SOURCE_ROOT@', '@BUILD_ROOT@', 'stm32/l4'],
)
