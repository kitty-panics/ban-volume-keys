#!/bin/sh

UP_DIR="/sdcard/sys_ban_volume_up"
DOWN_DIR="/sdcard/sys_ban_volume_down"
ALL_DIR="/sdcard/sys_ban_volume_all"
rm -r $UP_DIR;   mkdir -p $UP_DIR
rm -r $DOWN_DIR; mkdir -p $DOWN_DIR
rm -r $ALL_DIR;  mkdir -p $ALL_DIR

cd /system/usr/keylayout; ls -A | while read i; do
    grep VOLUME_UP $i >/dev/null 2>&1
    if [ $? -eq 0 ]; then
        grep VOLUME_DOWN $i >/dev/null 2>&1
        if [ $? -eq 0 ]; then
            sed '/VOLUME_UP/s/^/#/' $i > $UP_DIR/$i
            sed '/VOLUME_DOWN/s/^/#/' $i > $DOWN_DIR/$i

            sed '/VOLUME_UP/s/^/#/' $i > $ALL_DIR/$i
            sed -i '/VOLUME_DOWN/s/^/#/' $ALL_DIR/$i
        fi
    fi
done
