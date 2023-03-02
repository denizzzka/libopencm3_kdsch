nrf52_irqhandlers_h = custom_target(
    'nrf52_irqhandlers.h',
    input: nrf52_json,
    output: 'irqhandlers.h',
    command: [irq2nvic, '--irqhandlers', '@INPUT@', '@OUTPUT@'],
)
