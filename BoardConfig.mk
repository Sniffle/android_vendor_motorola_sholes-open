#
# Product-specific compile-time definitions.
#

TARGET_BOARD_PLATFORM := omap3
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a8 -ftree-vectorize
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a8 -ftree-vectorize

TARGET_NO_BOOTLOADER := false

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := CUSTOM
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := libCustomWifi
BOARD_WLAN_DEVICE := tiwlan0
BOARD_WLAN_TI_STA_DK_ROOT := system/wlan/ti/wilink_6_1
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/tiwlan_drv.ko"
WIFI_DRIVER_MODULE_ARG      := ""
WIFI_DRIVER_MODULE_NAME     := "tiwlan_drv"
WIFI_FIRMWARE_LOADER        := "wlan_loader"

TARGET_BOOTLOADER_BOARD_NAME := sholes

BOARD_KERNEL_CMDLINE := console=ttyS2,115200n8 rw mem=244M@0x80C00000 init=/init ip=off brdrev=P3A_CDMA mtdparts=omap2-nand.0:640k@128k(mbm),384k@1408k(cdt),384k@3328k(lbl),384k@6272k(misc),3584k(boot),4608k(recovery),143744k(system),94848k(cache),268032k(userdata),2m(kpanic)

BOARD_HAVE_BLUETOOTH := true
# BOARD_HAVE_BLUETOOTH_BCM := true

TARGET_HARDWARE_3D := false

BOARD_GPS_LIBRARIES := libmoto_gps

# BOARD_VENDOR_USE_AKMD := true

USE_PV_WINDOWS_MEDIA := false

# BOARD_USE_HTC_APPS := true

# BOARD_USE_HTC_LIBSENSORS := true
# BOARD_HTC_LIBSENSORS_NAME := sensors.mahimahi

BOARD_BOOTIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x00280000)
BOARD_RECOVERYIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x00500000)
BOARD_SYSTEMIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x04380000)
BOARD_USERDATAIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x04ac0000)
# The size of a block that can be marked bad.
BOARD_FLASH_BLOCK_SIZE := 131072

# BOARD_KERNEL_BASE := 0x20000000
USE_CAMERA_STUB := false
BOARD_EGL_CFG := vendor/motorola/sholes-open/egl.cfg
