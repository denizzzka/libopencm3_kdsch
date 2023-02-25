sam3u_irq = custom_target(
    'sam3u' + ' '.join(outfiles),
    output: outfiles,
    command: [irq2nvic, '@SOURCE_ROOT@', '@BUILD_ROOT@', 'sam/3u'],
)
