lpc43xxm0_irq = custom_target(
    'lpc43xxm0' + ' '.join(outfiles),
    output: outfiles,
    command: [irq2nvic, '@SOURCE_ROOT@', '@BUILD_ROOT@', 'lpc43xx/m0'],
)
