lpc43xxm4_irq = custom_target(
    'lpc43xxm4' + ' '.join(outfiles),
    output: outfiles,
    command: [irq2nvic, '@SOURCE_ROOT@', '@BUILD_ROOT@', 'lpc43xx/m4'],
)
