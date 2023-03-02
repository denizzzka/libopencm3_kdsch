sam3n_irqhandlers_h = custom_target(
    'sam3n_irqhandlers.h',
    input: sam3n_json,
    output: 'irqhandlers.h',
    command: [irq2nvic, '--irqhandlers', '@INPUT@', '@OUTPUT@'],
)
