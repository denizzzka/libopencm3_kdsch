sam3x_irqhandlers_h = custom_target(
    'sam3x_irqhandlers.h',
    input: sam3x_json,
    output: 'irqhandlers.h',
    command: [irq2nvic, '--irqhandlers', '@INPUT@', '@OUTPUT@'],
)
