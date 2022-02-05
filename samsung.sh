#!/bin/sh

# Connect to the device and remount directories as rw
adb su
su
mount -ro remount,rw /
mount -ro remount,rw /product
mount -ro remount,rw /sys
mount -ro remount,rw /system
mount -ro remount,rw /vendor
mount -ro remount,rw /data

# Debloat
rm -Rf /product/preload
cd /system/app
rm -Rf ClipboardEdge ClockPackage CompanionDeviceManager
