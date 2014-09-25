adb devices
adb shell
echo 'checking for your device...'
exit
adb reboot
adb devices
adb shell mount -o remount,rw /system
echo 'remounting system...'
echo 'installing root factors...'
adb push /assets/libraries/su /system/xbin/
adb push /assets/libraries/busybox /system/xbin/
adb push /assets/libraries/libjbedvm.so /system/lib
adb shell chown 0.0 /system/xbin/su
adb shell chown 0.0 /system/xbin/busybox
adb shell chmod 06755 /system/xbin/su
adb shell chmod 06755 /system/xbin/busybox
echo 'installing android jvm factors...'
adb install /assets/applications/Jbed.apk
adb reboot
echo 'completing root install...'
adb install /assets/applications/Superuser.apk
adb install /assets/applications/BusyBox X.apk
exit