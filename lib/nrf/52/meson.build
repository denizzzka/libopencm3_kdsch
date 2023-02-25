nrf52_irq = custom_target(
    'nrf52' + ' '.join(outfiles),
    output: outfiles,
    command: [irq2nvic, '@SOURCE_ROOT@', '@BUILD_ROOT@', 'nrf/52'],
)
