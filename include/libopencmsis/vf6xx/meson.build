vf6xx_irqhandlers_h = custom_target(
    'vf6xx_irqhandlers.h',
    input: vf6xx_json,
    output: 'irqhandlers.h',
    command: [irq2nvic, '--irqhandlers', '@INPUT@', '@OUTPUT@'],
)
