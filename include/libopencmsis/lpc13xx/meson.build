lpc13xx_irqhandlers_h = custom_target(
    'lpc13xx_irqhandlers.h',
    input: lpc13xx_json,
    output: 'irqhandlers.h',
    command: [irq2nvic, '--irqhandlers', '@INPUT@', '@OUTPUT@'],
)
