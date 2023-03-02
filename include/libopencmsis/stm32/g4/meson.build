stm32g4_irqhandlers_h = custom_target(
    'stm32g4_irqhandlers.h',
    input: stm32g4_json,
    output: 'irqhandlers.h',
    command: [irq2nvic, '--irqhandlers', '@INPUT@', '@OUTPUT@'],
)
