adb devices
echo 'checking for your device...'
adb root
adb shell mount -o rw,remount -t yaffs2 /dev/block/mtdblock0 /system
adb push /assets/libraries/su /system/xbin/
adb push /assets/libraries/busybox /system/xbin/
adb shell chmod 06755 /system/xbin/su
adb shell chmod 06755 /system/xbin/busybox
adb reboot
adb install /assets/applications/Superuser.apk
adb install /assets/applications/BusyBox X.apk
exit
