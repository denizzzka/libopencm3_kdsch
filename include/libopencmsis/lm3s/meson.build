lm3s_irqhandlers_h = custom_target(
    'lm3s_irqhandlers.h',
    input: lm3s_json,
    output: 'irqhandlers.h',
    command: [irq2nvic, '--irqhandlers', '@INPUT@', '@OUTPUT@'],
)
