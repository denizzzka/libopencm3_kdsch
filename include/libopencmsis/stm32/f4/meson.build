stm32f4_irqhandlers_h = custom_target(
    'stm32f4_irqhandlers.h',
    input: stm32f4_json,
    output: 'irqhandlers.h',
    command: [irq2nvic, '--irqhandlers', '@INPUT@', '@OUTPUT@'],
)
