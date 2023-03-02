stm32f1_irqhandlers_h = custom_target(
    'stm32f1_irqhandlers.h',
    input: stm32f1_json,
    output: 'irqhandlers.h',
    command: [irq2nvic, '--irqhandlers', '@INPUT@', '@OUTPUT@'],
)
