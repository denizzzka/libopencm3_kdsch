efm32tg_irq = custom_target(
    'efm32tg' + ' '.join(outfiles),
    output: outfiles,
    command: [irq2nvic, '@SOURCE_ROOT@', '@BUILD_ROOT@', 'efm32/tg'],
)
