sam3s_irq = custom_target(
    'sam3s' + ' '.join(outfiles),
    input: sam3s_json,
    output: outfiles,
    command: [irq2nvic, '@INPUT@', '@BUILD_ROOT@', 'sam/3s'],
)
