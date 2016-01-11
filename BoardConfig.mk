USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/xiaomi/cancro/BoardConfigVendor.mk

BOARD_VENDOR              := xiaomi
TARGET_ARCH               := arm
TARGET_NO_BOOTLOADER      := true
TARGET_BOARD_PLATFORM     := msm8974
TARGET_BOARD_PLATFORM_GPU := qcom-adreno330
TARGET_CPU_ABI            := armeabi-v7a
TARGET_CPU_ABI2           := armeabi
TARGET_ARCH_VARIANT       := armv7-a-neon
TARGET_CPU_VARIANT        := krait
TARGET_CPU_SMP            := true
#ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := cancro

#kernel
TARGET_PREBUILT_KERNEL    := device/xiaomi/cancro/kernel
BOARD_KERNEL_CMDLINE      := console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3 androidboot.selinux=permissive
BOARD_KERNEL_SEPARATED_DT := true
BOARD_KERNEL_BASE         := 0x00000000
BOARD_KERNEL_PAGESIZE     := 2048
BOARD_MKBOOTIMG_ARGS      := --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --dt device/xiaomi/cancro/dt.img


# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE     := 16777216   #16M  boot
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216   #16M  recovery
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 1320157184 #1259M system
BOARD_USERDATAIMAGE_PARTITION_SIZE := 536870912	 #6G data
BOARD_FLASH_BLOCK_SIZE             := 131072
BOARD_HAS_NO_SELECT_BUTTON         := true

# Flags
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

# TWRP configuration
DEVICE_RESOLUTION                       := 1080x1920
BOARD_HAS_NO_REAL_SDCARD                := true
BOARD_RECOVERY_SWIPE                    := true
TARGET_PREBUILT_RECOVERY_KERNEL         := $(call my-dir)/kernel
RECOVERY_GRAPHICS_USE_LINELENGTH        := true
TARGET_RECOVERY_PIXEL_FORMAT            := "RGBX_8888"
TARGET_RECOVERY_FSTAB                   := device/xiaomi/cancro/recovery/twrp.fstab
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID  := true
RECOVERY_FSTAB_VERSION                  := 2
BOARD_NATIVE_DUALBOOT                   := true
BOARD_NATIVE_DUALBOOT_SINGLEDATA        := true
TARGET_RECOVERY_LCD_BACKLIGHT_PATH      := "/sys/class/leds/lcd-backlight/brightness"
TW_INCLUDE_CRYPTO                       := true
TW_NO_SCREEN_TIMEOUT                    := true
TW_NO_SCREEN_BLANK                      := true
TARGET_RECOVERY_QCOM_RTC_FIX            := true
BOARD_SUPPRESS_SECURE_ERASE             := true
BOARD_SUPPRESS_EMMC_WIPE                := true
RECOVERY_SDCARD_ON_DATA                 := true
