efm32g_irqhandlers_h = custom_target(
    'efm32g_irqhandlers.h',
    input: efm32g_json,
    output: 'irqhandlers.h',
    command: [irq2nvic, '--irqhandlers', '@INPUT@', '@OUTPUT@'],
)
