efm32lg_irqhandlers_h = custom_target(
    'efm32lg_irqhandlers.h',
    input: efm32lg_json,
    output: 'irqhandlers.h',
    command: [irq2nvic, '--irqhandlers', '@INPUT@', '@OUTPUT@'],
)
