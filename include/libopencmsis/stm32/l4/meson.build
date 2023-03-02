stm32l4_irqhandlers_h = custom_target(
    'stm32l4_irqhandlers.h',
    input: stm32l4_json,
    output: 'irqhandlers.h',
    command: [irq2nvic, '--irqhandlers', '@INPUT@', '@OUTPUT@'],
)
