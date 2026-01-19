#!/system/bin/sh
# Determine the filesystem of a block device

FBE=$(getprop ro.crypto.dm_default_key.options_format.version)

# FBEV2 check
if [ "$FBE" = "2" ]; then
    echo >> /system/etc/recovery.fstab
    cat /system/etc/recovery.fstab.fbev2 >> /system/etc/recovery.fstab
else
    echo >> /system/etc/recovery.fstab
    cat /system/etc/recovery.fstab.fbev1 >> /system/etc/recovery.fstab
fi
