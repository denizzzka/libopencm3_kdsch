sam4l_irq = custom_target(
    'sam4l' + ' '.join(outfiles),
    output: outfiles,
    command: [irq2nvic, '@SOURCE_ROOT@', '@BUILD_ROOT@', 'sam/4l'],
)
