sam3u_irqhandlers_h = custom_target(
    'sam3u_irqhandlers.h',
    input: sam3u_json,
    output: 'irqhandlers.h',
    command: [irq2nvic, '--irqhandlers', '@INPUT@', '@OUTPUT@'],
)
