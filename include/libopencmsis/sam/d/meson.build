samd_irqhandlers_h = custom_target(
    'samd_irqhandlers.h',
    input: samd_json,
    output: 'irqhandlers.h',
    command: [irq2nvic, '--irqhandlers', '@INPUT@', '@OUTPUT@'],
)
