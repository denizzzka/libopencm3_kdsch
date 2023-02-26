gd32f1x0_irq = custom_target(
    'gd32f1x0' + ' '.join(outfiles),
    input: gd32f1x0_json,
    output: outfiles,
    command: [irq2nvic, '@INPUT@', '@BUILD_ROOT@', 'gd32/f1x0'],
)
