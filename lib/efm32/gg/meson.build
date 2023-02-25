efm32gg_irq = custom_target(
    'efm32gg' + ' '.join(outfiles),
    output: outfiles,
    command: [irq2nvic, '@SOURCE_ROOT@', '@BUILD_ROOT@', 'efm32/gg'],
)
