#!/bin/sh

printf "This script has only been tested Android 11. There is no guarantee this will work on other versions of Android.\n";
printf "WARNING: The following apps and their data will be removed.\nThis CANNOT BE UNDONE"
printf "\n"

# Connect to the device and remount directories as rw
adb su
su
mount -rov remount,rw /
mount -rov remount,rw /product
mount -rov remount,rw /sys
mount -rov remount,rw /system
mount -rov remount,rw /vendor
mount -rov remount,rw /data

# Disable apps scheduled for removal, to prevent broken icons and uncleared caches
pm uninstall --user com.

# Debloat
rm -fv /bin/bootanimation	# Useless; just wastes time
rm -Rfv /product/preload
cd /system/app
# Google
rm -Rfv 
# Samsung
rm -Rfv 
cd ../priv-app
#Google
rm -Rfv
# Samsung
rm -Rfv
