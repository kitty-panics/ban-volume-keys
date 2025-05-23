# Ban Volume Keys

禁用音量键。

## Usage

依次执行下面步骤，将生成 3 个 Magisk 模块，分别能禁用音量加键，音量减键和所有音量键。

Follow the steps below to create three separate Magisk modules: one to disable thevolume
up button, another for the volume down button, and a third to block all volume keys.

1. `adb push auto-gen-kl-files.sh /data/local/tmp`
2. `adb shell /data/local/tmp/auto-gen-kl-files.sh`
3. `adb pull /sdcard/sys_ban_volume_up .`
4. `adb pull /sdcard/sys_ban_volume_down .`
5. `adb pull /sdcard/sys_ban_volume_all .`
6. `bash pack-magisk-mod.sh`
7. 将所需模块传入手机，并刷入。
