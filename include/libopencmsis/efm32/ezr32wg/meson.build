efm32ezr32wg_irqhandlers_h = custom_target(
    'efm32ezr32wg_irqhandlers.h',
    input: efm32ezr32wg_json,
    output: 'irqhandlers.h',
    command: [irq2nvic, '--irqhandlers', '@INPUT@', '@OUTPUT@'],
)
