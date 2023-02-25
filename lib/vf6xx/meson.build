vf6xx_irq = custom_target(
    'vf6xx' + ' '.join(outfiles),
    output: outfiles,
    command: [irq2nvic, '@SOURCE_ROOT@', '@BUILD_ROOT@', 'vf6xx'],
)
