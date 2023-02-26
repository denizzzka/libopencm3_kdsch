efm32wg_irq = custom_target(
    'efm32wg' + ' '.join(outfiles),
    input: efm32wg_json,
    output: outfiles,
    command: [irq2nvic, '@INPUT@', '@BUILD_ROOT@', 'efm32/wg'],
)
