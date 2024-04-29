#ifndef BOARD_CONFIG_H
#define BOARD_CONFIG_H

#define VENDOR_NAME "rexlab"
#define PRODUCT_NAME "PyCubedMini"
#define VOLUME_LABEL "PYCUBEDBOOT"
#define INDEX_URL "https://pycubed.org"
#define BOARD_ID "PyCubedMini_J20"

#define USB_VID 0x04D8
#define USB_PID 0xEDBE // PID sublicensed from Microchip

#define BOARD_NEOPIXEL_PIN PIN_PA21
#define BOARD_NEOPIXEL_COUNT 1

#define BOOT_USART_MODULE                 SERCOM0
#define BOOT_USART_MASK                   APBAMASK
#define BOOT_USART_BUS_CLOCK_INDEX        MCLK_APBAMASK_SERCOM0
#define BOOT_USART_PAD_SETTINGS           UART_RX_PAD1_TX_PAD0
#define BOOT_USART_PAD3                   PINMUX_UNUSED
#define BOOT_USART_PAD2                   PINMUX_UNUSED
#define BOOT_USART_PAD1                   PINMUX_PA04D_SERCOM0_PAD0
#define BOOT_USART_PAD0                   PINMUX_PA05D_SERCOM0_PAD1
#define BOOT_GCLK_ID_CORE                 SERCOM0_GCLK_ID_CORE
#define BOOT_GCLK_ID_SLOW                 SERCOM0_GCLK_ID_SLOW

#endif
