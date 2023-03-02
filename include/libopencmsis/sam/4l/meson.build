sam4l_irqhandlers_h = custom_target(
    'sam4l_irqhandlers.h',
    input: sam4l_json,
    output: 'irqhandlers.h',
    command: [irq2nvic, '--irqhandlers', '@INPUT@', '@OUTPUT@'],
)
