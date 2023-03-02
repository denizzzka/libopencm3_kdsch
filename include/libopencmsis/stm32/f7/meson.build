stm32f7_irqhandlers_h = custom_target(
    'stm32f7_irqhandlers.h',
    input: stm32f7_json,
    output: 'irqhandlers.h',
    command: [irq2nvic, '--irqhandlers', '@INPUT@', '@OUTPUT@'],
)
