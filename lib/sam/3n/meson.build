sam3n_irq = custom_target(
    'sam3n' + ' '.join(outfiles),
    output: outfiles,
    command: [irq2nvic, '@SOURCE_ROOT@', '@BUILD_ROOT@', 'sam/3n'],
)
