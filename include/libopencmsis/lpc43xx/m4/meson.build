lpc43xxm4_irqhandlers_h = custom_target(
    'lpc43xxm4_irqhandlers.h',
    input: lpc43xxm4_json,
    output: 'irqhandlers.h',
    command: [irq2nvic, '--irqhandlers', '@INPUT@', '@OUTPUT@'],
)
