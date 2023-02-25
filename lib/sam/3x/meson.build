sam3x_irq = custom_target(
    'sam3x' + ' '.join(outfiles),
    output: outfiles,
    command: [irq2nvic, '@SOURCE_ROOT@', '@BUILD_ROOT@', 'sam/3x'],
)
