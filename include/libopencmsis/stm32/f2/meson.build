stm32f2_irqhandlers_h = custom_target(
    'stm32f2_irqhandlers.h',
    input: stm32f2_json,
    output: 'irqhandlers.h',
    command: [irq2nvic, '--irqhandlers', '@INPUT@', '@OUTPUT@'],
)
