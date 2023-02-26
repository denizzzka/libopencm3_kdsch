efm32ezr32wg_irq = custom_target(
    'efm32ezr32wg' + ' '.join(outfiles),
    input: efm32ezr32wg_json,
    output: outfiles,
    command: [irq2nvic, '@INPUT@', '@BUILD_ROOT@', 'efm32/ezr32wg'],
)
