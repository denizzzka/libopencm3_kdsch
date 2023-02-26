efm32lg_irq = custom_target(
    'efm32lg' + ' '.join(outfiles),
    input: efm32lg_json,
    output: outfiles,
    command: [irq2nvic, '@INPUT@', '@BUILD_ROOT@', 'efm32/lg'],
)
