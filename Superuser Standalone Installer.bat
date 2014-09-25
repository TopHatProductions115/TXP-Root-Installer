adb devices
adb shell
echo 'checking for your device...'
exit
adb reboot
adb devices
adb shell
echo 'ro.kernel/.qemu=1' > /data/local.prop
exit
adb reboot
adb devices
adb shell mount -o remount,rw /system
adb push /assets/libraries/su /system/xbin/su
adb shell chown 0.0 /system/xbin/su
adb shell chmod 06755 /system/xbin/su
exit
adb reboot
adb install /assets/applications/Superuser.apk
exit