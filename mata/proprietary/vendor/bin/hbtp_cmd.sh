#!/vendor/bin/sh
export PATH=$PATH:/system/bin/sh:/sbin:/vendor/bin:/system/sbin:/system/bin:/system/xbin

if [ "$1" == "grip" ]; then
    if [ "$2" == "off" ]; then
        hbtp_daemon tool sendCommand enableGripRejection 0
    else
        hbtp_daemon tool sendCommand enableGripRejection 1
    fi
elif [ "$1" == "smoothness" ]; then
    hbtp_daemon tool sendCommand setSmoothing $2
fi
