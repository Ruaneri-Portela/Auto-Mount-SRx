#!/bin/bash
device="/dev/sr0" #This is a example driver, in some linux can /dev/dvd or /dev/cdrom, if you have only one disc reader in updated kernel use /dev/sr0, but check your device in lsblk at disk as inserted!
have_disk=0
as_mounted=0

while true; do
    if blkid "$device" >/dev/null 2>&1; then
        if [[ $have_disk -eq 0 ]]; then
            echo "Disc found in $device"
            have_disk=1
            if [[ $as_mounted -eq 0 ]]; then
                echo "Monting disc..."
                # Action on driver as inseted and ready to mount 
                mount $device /srv/samba/disk # <---- Eg. To mount on minidlna midia server / or you can mount on Samba path to share disc data over LAN
                systemctl restart minidlna
                #-----------------------------------------------
                as_mounted=1
            fi
        fi
    else
        if [[ $have_disk -eq 1 ]]; then
            echo "Nothing disc fond in $device"
            have_disk=0
            if [[ $as_mounted -eq 1 ]]; then
                echo "Unmounting disc..."
                # Actions if driver is removed from reader
                umount -f $device # <---- Eg. Call kernel to umount driver if not have make this in auto mode.
                #-----------------------------------------
                as_mounted=0
            fi
        fi
    fi
    # Wait some seconds to re exec script
    sleep 5
done
