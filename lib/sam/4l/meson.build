sam4l_irq = custom_target(
    'sam4l' + ' '.join(outfiles),
    input: sam4l_json,
    output: outfiles,
    command: [irq2nvic, '@INPUT@', '@BUILD_ROOT@', 'sam/4l'],
)
