efm32tg_irq = custom_target(
    'efm32tg' + ' '.join(outfiles),
    input: efm32tg_json,
    output: outfiles,
    command: [irq2nvic, '@INPUT@', '@BUILD_ROOT@', 'efm32/tg'],
)
