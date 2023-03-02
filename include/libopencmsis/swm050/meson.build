swm050_irqhandlers_h = custom_target(
    'swm050_irqhandlers.h',
    input: swm050_json,
    output: 'irqhandlers.h',
    command: [irq2nvic, '--irqhandlers', '@INPUT@', '@OUTPUT@'],
)
