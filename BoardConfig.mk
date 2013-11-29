USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lge/zee/BoardConfigVendor.mk

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait
ARCH_ARM_HAVE_TLS_REGISTER := true

#TARGET_BOOTLOADER_BOARD_NAME := 
TARGET_BOARD_PLATFORM := msm8974

# Kernel information
BOARD_KERNEL_BASE     := 0x80008000
BOARD_KERNEL_CMDLINE  := console=ttyHSL0,115200,n8 androidboot.hardware=z user_debug=31 msm_rtb.filter=0x0
BOARD_MKBOOTIMG_ARGS  := --ramdisk_offset 0xfea08200 --tags_offset 0x80008100
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true

#BOARD_CUSTOM_BOOTIMG_MK := device/lge/zee/mkbootimg.mk
TARGET_KERNEL_SOURCE := kernel/lge/msm8974
TARGET_KERNEL_CONFIG := z-kt-perf_defconfig

BOARD_BOOTIMAGE_PARTITION_SIZE := 11534336
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 13631488
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 257946960
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27971795968
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_KERNEL_IMAGE_NAME := zImage-dtb

TARGET_PREBUILT_KERNEL := device/lge/zee/kernel

# Recovery
RECOVERY_FSTAB_VERSION = 2
TARGET_RECOVERY_FSTAB := device/lge/zee/rootdir/etc/fstab.qcom
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
ENABLE_LOKI_RECOVERY := true

BOARD_USES_QC_TIME_SERVICES := true

#SELinux
BOARD_SEPOLICY_UNION := \
    file_contexts \
    file.te \
    device.te \

BOARD_SEPOLICY_DIRS := \
    device/lge/zee/sepolicy

TARGET_OTA_ASSERT_DEVICE := zee

G2_DTS_TARGET := msm8974-z-kr
