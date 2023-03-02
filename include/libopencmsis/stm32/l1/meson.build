stm32l1_irqhandlers_h = custom_target(
    'stm32l1_irqhandlers.h',
    input: stm32l1_json,
    output: 'irqhandlers.h',
    command: [irq2nvic, '--irqhandlers', '@INPUT@', '@OUTPUT@'],
)
