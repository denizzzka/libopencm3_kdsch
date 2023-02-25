efm32wg_irq = custom_target(
    'efm32wg' + ' '.join(outfiles),
    output: outfiles,
    command: [irq2nvic, '@SOURCE_ROOT@', '@BUILD_ROOT@', 'efm32/wg'],
)
