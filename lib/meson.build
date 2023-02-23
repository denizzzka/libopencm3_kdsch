subdir('cm3')

# The script also generates vector_nvic.c, but we do not add it to
# src because it is not a complete compilation unit. It's included by
# another file.
outfiles = ['nvic.h', 'irqhandlers.h']

targets = []

targets += {
    'name': 'stm32f4',
    'flags': [
        '-mabi=aapcs',
        '-mcpu=cortex-m4',
        '-mfloat-abi=hard',
        '-mfpu=fpv4-sp-d16',
        '-mthumb',
    ],
    'src': src_cm3 + custom_target(
        ' '.join(outfiles),
        output: outfiles,
        command: [irq2nvic, '@SOURCE_ROOT@', '@BUILD_ROOT@', 'stm32/f4'],
    ) + files(
        'ethernet/mac.c',
        'ethernet/phy.c',
        'ethernet/mac_stm32fxx7.c',
        'ethernet/phy_ksz80x1.c',
        'stm32/can.c',
        'stm32/common/adc_common_v1.c',
        'stm32/common/adc_common_v1_multi.c',
        'stm32/common/adc_common_f47.c',
        'stm32/common/crc_common_all.c',
        'stm32/common/crypto_common_f24.c',
        'stm32/common/dac_common_all.c',
        'stm32/common/dac_common_v1.c',
        'stm32/common/dcmi_common_f47.c',
        'stm32/common/desig_common_all.c',
        'stm32/common/desig_common_v1.c',
        'stm32/common/dma2d_common_f47.c',
        'stm32/common/dma_common_f24.c',
        'stm32/common/dsi_common_f47.c',
        'stm32/common/exti_common_all.c',
        'stm32/common/flash_common_all.c',
        'stm32/common/flash_common_f24.c',
        'stm32/common/flash_common_f.c',
        'stm32/common/flash_common_idcache.c',
        'stm32/common/fmc_common_f47.c',
        'stm32/common/gpio_common_all.c',
        'stm32/common/gpio_common_f0234.c',
        'stm32/common/hash_common_f24.c',
        'stm32/common/i2c_common_v1.c',
        'stm32/common/iwdg_common_all.c',
        'stm32/common/lptimer_common_all.c',
        'stm32/common/ltdc_common_f47.c',
        'stm32/common/pwr_common_v1.c',
        'stm32/common/quadspi_common_v1.c',
        'stm32/common/rcc_common_all.c',
        'stm32/common/rng_common_v1.c',
        'stm32/common/rtc_common_l1f024.c',
        'stm32/common/spi_common_all.c',
        'stm32/common/spi_common_v1.c',
        'stm32/common/spi_common_v1_frf.c',
        'stm32/common/timer_common_all.c',
        'stm32/common/timer_common_f0234.c',
        'stm32/common/timer_common_f24.c',
        'stm32/common/usart_common_all.c',
        'stm32/common/usart_common_f124.c',
        'stm32/f4/crypto.c',
        'stm32/f4/flash.c',
        'stm32/f4/pwr.c',
        'stm32/f4/rcc.c',
        'stm32/f4/rtc.c',
        'usb/usb_audio.c',
        'usb/usb.c',
        'usb/usb_cdc.c',
        'usb/usb_control.c',
        'usb/usb_dwc_common.c',
        'usb/usb_f107.c',
        'usb/usb_f207.c',
        'usb/usb_hid.c',
        'usb/usb_midi.c',
        'usb/usb_msc.c',
        'usb/usb_standard.c',
    ),
}

foreach target : targets
    macro = '-D' + target['name'].to_upper()

    static_library(
        'opencm3_' + target['name'],
        sources: target['src'],
        c_args: target['flags'] + macro,
        link_args: target['flags'],
        native: false,
        include_directories: inc,
    )
endforeach
