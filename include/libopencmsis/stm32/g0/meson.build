stm32g0_irqhandlers_h = custom_target(
    'stm32g0_irqhandlers.h',
    input: stm32g0_json,
    output: 'irqhandlers.h',
    command: [irq2nvic, '--irqhandlers', '@INPUT@', '@OUTPUT@'],
)
