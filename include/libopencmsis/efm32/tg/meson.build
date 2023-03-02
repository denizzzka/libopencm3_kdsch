efm32tg_irqhandlers_h = custom_target(
    'efm32tg_irqhandlers.h',
    input: efm32tg_json,
    output: 'irqhandlers.h',
    command: [irq2nvic, '--irqhandlers', '@INPUT@', '@OUTPUT@'],
)
