stm32f3_irqhandlers_h = custom_target(
    'stm32f3_irqhandlers.h',
    input: stm32f3_json,
    output: 'irqhandlers.h',
    command: [irq2nvic, '--irqhandlers', '@INPUT@', '@OUTPUT@'],
)
