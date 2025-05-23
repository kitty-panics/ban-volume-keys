# Ban Volume Keys

## Usage

1. `adb push auto-generator.sh /data/local/tmp`
2. `adb shell /data/local/tmp/auto-generator.sh`
3. `adb pull /sdcard/sys_ban_volume_up .`
4. `adb pull /sdcard/sys_ban_volume_down .`
5. `adb pull /sdcard/sys_ban_volume_all .`
6. `bash pack.sh`
