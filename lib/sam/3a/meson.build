sam3a_irq = custom_target(
    'sam3a' + ' '.join(outfiles),
    input: sam3a_json,
    output: outfiles,
    command: [irq2nvic, '@INPUT@', '@BUILD_ROOT@', 'sam/3a'],
)
