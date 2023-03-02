efm32hg_irqhandlers_h = custom_target(
    'efm32hg_irqhandlers.h',
    input: efm32hg_json,
    output: 'irqhandlers.h',
    command: [irq2nvic, '--irqhandlers', '@INPUT@', '@OUTPUT@'],
)
