efm32gg_irqhandlers_h = custom_target(
    'efm32gg_irqhandlers.h',
    input: efm32gg_json,
    output: 'irqhandlers.h',
    command: [irq2nvic, '--irqhandlers', '@INPUT@', '@OUTPUT@'],
)
