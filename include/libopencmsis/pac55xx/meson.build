pac55xx_irqhandlers_h = custom_target(
    'pac55xx_irqhandlers.h',
    input: pac55xx_json,
    output: 'irqhandlers.h',
    command: [irq2nvic, '--irqhandlers', '@INPUT@', '@OUTPUT@'],
)
