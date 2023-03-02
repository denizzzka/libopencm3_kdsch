nrf51_irqhandlers_h = custom_target(
    'nrf51_irqhandlers.h',
    input: nrf51_json,
    output: 'irqhandlers.h',
    command: [irq2nvic, '--irqhandlers', '@INPUT@', '@OUTPUT@'],
)
