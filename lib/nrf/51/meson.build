nrf51_irq = custom_target(
    'nrf51' + ' '.join(outfiles),
    input: nrf51_json,
    output: outfiles,
    command: [irq2nvic, '@INPUT@', '@BUILD_ROOT@', 'nrf/51'],
)
