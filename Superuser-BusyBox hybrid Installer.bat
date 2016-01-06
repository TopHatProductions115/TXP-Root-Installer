adb devices
adb shell
echo 'checking for your device...'
adb root
adb shell mount -o remount,rw /system
echo 'remounting system...'
echo 'installing root factors...'
adb push /assets/libraries/su /system/xbin/
adb push /assets/libraries/busybox /system/xbin/
adb shell chown 0.0 /system/xbin/su
adb shell chown 0.0 /system/xbin/busybox
adb shell chmod 06755 /system/xbin/su
adb shell chmod 06755 /system/xbin/busybox
adb reboot
adb install /assets/applications/Superuser.apk
adb install /assets/applications/BusyBox X.apk
exit
