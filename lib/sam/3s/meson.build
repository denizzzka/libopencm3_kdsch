sam3s_irq = custom_target(
    'sam3s' + ' '.join(outfiles),
    output: outfiles,
    command: [irq2nvic, '@SOURCE_ROOT@', '@BUILD_ROOT@', 'sam/3s'],
)
