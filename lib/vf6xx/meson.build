vf6xx_irq = custom_target(
    'vf6xx' + ' '.join(outfiles),
    input: vf6xx_json,
    output: outfiles,
    command: [irq2nvic, '@INPUT@', '@BUILD_ROOT@', 'vf6xx'],
)
