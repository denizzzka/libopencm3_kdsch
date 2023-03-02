stm32l0_irqhandlers_h = custom_target(
    'stm32l0_irqhandlers.h',
    input: stm32l0_json,
    output: 'irqhandlers.h',
    command: [irq2nvic, '--irqhandlers', '@INPUT@', '@OUTPUT@'],
)
