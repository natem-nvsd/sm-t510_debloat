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
# Google
rm -Rf YouTube BookmarkProvider Chrome ChromeCustomizations DuoStub EasterEgg Gmail2 GoogleCalendarSyncAdaptor Google ContactsSyncAdaptor GoogleExtShared GoogleLocationHistory GooglePrintRecommendationService GoogleTTS 
# Samsung
rm -Rf ClipboardEdge ClockPackage CompanionDeviceManager SamsungOne
