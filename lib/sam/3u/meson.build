sam3u_irq = custom_target(
    'sam3u' + ' '.join(outfiles),
    input: sam3u_json,
    output: outfiles,
    command: [irq2nvic, '@INPUT@', '@BUILD_ROOT@', 'sam/3u'],
)
