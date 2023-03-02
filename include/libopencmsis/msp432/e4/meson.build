msp432e4_irqhandlers_h = custom_target(
    'msp432e4_irqhandlers.h',
    input: msp432e4_json,
    output: 'irqhandlers.h',
    command: [irq2nvic, '--irqhandlers', '@INPUT@', '@OUTPUT@'],
)
