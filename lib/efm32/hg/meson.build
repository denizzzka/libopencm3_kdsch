efm32hg_irq = custom_target(
    'efm32hg' + ' '.join(outfiles),
    input: efm32hg_json,
    output: outfiles,
    command: [irq2nvic, '@INPUT@', '@BUILD_ROOT@', 'efm32/hg'],
)
