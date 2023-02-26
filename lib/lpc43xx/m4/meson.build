lpc43xxm4_irq = custom_target(
    'lpc43xxm4' + ' '.join(outfiles),
    input: lpc43xxm4_json,
    output: outfiles,
    command: [irq2nvic, '@INPUT@', '@BUILD_ROOT@', 'lpc43xx/m4'],
)
