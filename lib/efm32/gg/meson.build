efm32gg_irq = custom_target(
    'efm32gg' + ' '.join(outfiles),
    input: efm32gg_json,
    output: outfiles,
    command: [irq2nvic, '@INPUT@', '@BUILD_ROOT@', 'efm32/gg'],
)
