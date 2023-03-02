stm32f0_irqhandlers_h = custom_target(
    'stm32f0_irqhandlers.h',
    input: stm32f0_json,
    output: 'irqhandlers.h',
    command: [irq2nvic, '--irqhandlers', '@INPUT@', '@OUTPUT@'],
)
