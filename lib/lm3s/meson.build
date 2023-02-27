lm3s_irq = custom_target(
    'lm3s' + ' '.join(outfiles),
    input: lm3s_json,
    output: outfiles,
    command: [irq2nvic, '@INPUT@', '@BUILD_ROOT@', 'lm3s'],
)
