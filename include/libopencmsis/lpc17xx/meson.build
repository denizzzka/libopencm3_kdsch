lpc17xx_irqhandlers_h = custom_target(
    'lpc17xx_irqhandlers.h',
    input: lpc17xx_json,
    output: 'irqhandlers.h',
    command: [irq2nvic, '--irqhandlers', '@INPUT@', '@OUTPUT@'],
)
