efm32hg_irq = custom_target(
    'efm32hg' + ' '.join(outfiles),
    output: outfiles,
    command: [irq2nvic, '@SOURCE_ROOT@', '@BUILD_ROOT@', 'efm32/hg'],
)
