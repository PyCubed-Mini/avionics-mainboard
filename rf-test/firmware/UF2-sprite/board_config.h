#ifndef BOARD_CONFIG_H
#define BOARD_CONFIG_H

#define VENDOR_NAME "maholli"
#define PRODUCT_NAME "KickSat-Sprite"
#define VOLUME_LABEL "SPRITEBOOT"
#define INDEX_URL "https://github.com/kicksat"
#define BOARD_ID "SPRITE"

#define USB_VID 0x04D8
#define USB_PID 0xEDBE // PID sublicensed from Microchip

#define LED_PIN PIN_PB03

#define BOARD_NEOPIXEL_COUNT 0

#define BOOT_USART_MODULE                 SERCOM3
#define BOOT_USART_MASK                   APBAMASK
#define BOOT_USART_BUS_CLOCK_INDEX        MCLK_APBBMASK_SERCOM3
#define BOOT_USART_PAD_SETTINGS           UART_RX_PAD1_TX_PAD0
#define BOOT_USART_PAD3                   PINMUX_UNUSED
#define BOOT_USART_PAD2                   PINMUX_UNUSED
#define BOOT_USART_PAD1                   PINMUX_PA22C_SERCOM3_PAD0
#define BOOT_USART_PAD0                   PINMUX_PA23C_SERCOM3_PAD1
#define BOOT_GCLK_ID_CORE                 SERCOM3_GCLK_ID_CORE
#define BOOT_GCLK_ID_SLOW                 SERCOM3_GCLK_ID_SLOW

#endif
