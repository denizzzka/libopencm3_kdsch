efm32g_irq = custom_target(
    'efm32g' + ' '.join(outfiles),
    input: efm32g_json,
    output: outfiles,
    command: [irq2nvic, '@INPUT@', '@BUILD_ROOT@', 'efm32/g'],
)
