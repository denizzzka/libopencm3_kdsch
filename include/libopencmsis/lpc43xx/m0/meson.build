lpc43xxm0_irqhandlers_h = custom_target(
    'lpc43xxm0_irqhandlers.h',
    input: lpc43xxm0_json,
    output: 'irqhandlers.h',
    command: [irq2nvic, '--irqhandlers', '@INPUT@', '@OUTPUT@'],
)
