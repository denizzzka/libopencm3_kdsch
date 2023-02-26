samd_irq = custom_target(
    'samd' + ' '.join(outfiles),
    input: samd_json,
    output: outfiles,
    command: [irq2nvic, '@INPUT@', '@BUILD_ROOT@', 'sam/d'],
)
