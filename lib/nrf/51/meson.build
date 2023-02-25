nrf51_irq = custom_target(
    'nrf51' + ' '.join(outfiles),
    output: outfiles,
    command: [irq2nvic, '@SOURCE_ROOT@', '@BUILD_ROOT@', 'nrf/51'],
)
