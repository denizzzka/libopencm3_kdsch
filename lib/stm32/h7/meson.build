stm32h7_irq = custom_target(
    'stm32h7' + ' '.join(outfiles),
    output: outfiles,
    command: [irq2nvic, '@SOURCE_ROOT@', '@BUILD_ROOT@', 'stm32/h7'],
)
