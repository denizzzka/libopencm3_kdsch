sam3s_irqhandlers_h = custom_target(
    'sam3s_irqhandlers.h',
    input: sam3s_json,
    output: 'irqhandlers.h',
    command: [irq2nvic, '--irqhandlers', '@INPUT@', '@OUTPUT@'],
)
