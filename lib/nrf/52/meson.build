nrf52_irq = custom_target(
    'nrf52' + ' '.join(outfiles),
    input: nrf52_json,
    output: outfiles,
    command: [irq2nvic, '@INPUT@', '@BUILD_ROOT@', 'nrf/52'],
)
