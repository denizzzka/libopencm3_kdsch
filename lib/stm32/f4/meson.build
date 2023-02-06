outfiles = ['nvic.h', 'irqhandlers.h']
src += [
    custom_target(
        ' '.join(outfiles),
        output: outfiles,
        command: [irq2nvic, '@SOURCE_ROOT@', '@BUILD_ROOT@', target],
    ),
    files('crypto.c'),
    files('flash.c'),
    files('pwr.c'),
    files('rcc.c'),
    files('rtc.c'),
]

shared = ['lib/ethernet', 'lib/stm32', 'lib/stm32/common', 'lib/usb']
