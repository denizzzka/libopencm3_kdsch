gd32f1x0_irq = custom_target(
    'gd32f1x0' + ' '.join(outfiles),
    output: outfiles,
    command: [irq2nvic, '@SOURCE_ROOT@', '@BUILD_ROOT@', 'gd32/f1x0'],
)
