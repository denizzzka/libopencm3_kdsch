stm32h7_irqhandlers_h = custom_target(
    'stm32h7_irqhandlers.h',
    input: stm32h7_json,
    output: 'irqhandlers.h',
    command: [irq2nvic, '--irqhandlers', '@INPUT@', '@OUTPUT@'],
)
