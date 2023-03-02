gd32f1x0_irqhandlers_h = custom_target(
    'gd32f1x0_irqhandlers.h',
    input: gd32f1x0_json,
    output: 'irqhandlers.h',
    command: [irq2nvic, '--irqhandlers', '@INPUT@', '@OUTPUT@'],
)
