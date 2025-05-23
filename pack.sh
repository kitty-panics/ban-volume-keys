#!/usr/bin/env bash

MOD_UP_DIR="./Ban-Volume-Up/system/usr/keylayout"
MOD_DOWN_DIR="./Ban-Volume-Down/system/usr/keylayout"
MOD_ALL_DIR="./Ban-Volume-All/system/usr/keylayout"
rm $MOD_UP_DIR/*
rm $MOD_DOWN_DIR/*
rm $MOD_ALL_DIR/*

SYS_UP_DIR="./sys_ban_volume_up"
SYS_DOWN_DIR="./sys_ban_volume_down"
SYS_ALL_DIR="./sys_ban_volume_all"
cp $SYS_UP_DIR/*   $MOD_UP_DIR
cp $SYS_DOWN_DIR/* $MOD_DOWN_DIR
cp $SYS_ALL_DIR/*  $MOD_ALL_DIR
#rm -r $SYS_UP_DIR
#rm -r $SYS_DOWN_DIR
#rm -r $SYS_ALL_DIR

cd Ban-Volume-Up; zip -r ../Magisk-BAN_VOLUME_UP.zip *; cd ..
cd Ban-Volume-Down; zip -r ../Magisk-BAN_VOLUME_DOWN.zip *; cd ..
cd Ban-Volume-All; zip -r ../Magisk-BAN_VOLUME_ALL.zip *; cd ..
rm $MOD_UP_DIR/*;   touch $MOD_UP_DIR/.gitkeep
rm $MOD_DOWN_DIR/*; touch $MOD_DOWN_DIR/.gitkeep
rm $MOD_ALL_DIR/*;  touch $MOD_ALL_DIR/.gitkeep
