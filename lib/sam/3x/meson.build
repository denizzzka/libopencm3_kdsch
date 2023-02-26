sam3x_irq = custom_target(
    'sam3x' + ' '.join(outfiles),
    input: sam3x_json,
    output: outfiles,
    command: [irq2nvic, '@INPUT@', '@BUILD_ROOT@', 'sam/3x'],
)
