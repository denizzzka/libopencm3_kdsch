lpc43xxm0_irq = custom_target(
    'lpc43xxm0' + ' '.join(outfiles),
    input: lpc43xxm0_json,
    output: outfiles,
    command: [irq2nvic, '@INPUT@', '@BUILD_ROOT@', 'lpc43xx/m0'],
)
