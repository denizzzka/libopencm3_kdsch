sam3n_irq = custom_target(
    'sam3n' + ' '.join(outfiles),
    input: sam3n_json,
    output: outfiles,
    command: [irq2nvic, '@INPUT@', '@BUILD_ROOT@', 'sam/3n'],
)
