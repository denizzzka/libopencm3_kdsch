efm32wg_irqhandlers_h = custom_target(
    'efm32wg_irqhandlers.h',
    input: efm32wg_json,
    output: 'irqhandlers.h',
    command: [irq2nvic, '--irqhandlers', '@INPUT@', '@OUTPUT@'],
)
