sam3a_irqhandlers_h = custom_target(
    'sam3a_irqhandlers.h',
    input: sam3a_json,
    output: 'irqhandlers.h',
    command: [irq2nvic, '--irqhandlers', '@INPUT@', '@OUTPUT@'],
)
