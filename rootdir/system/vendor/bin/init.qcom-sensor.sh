#!/system/vendor/bin/sh
# Copyright (C) 2013 Sony Mobile Communications AB.

#
# Function to start sensors for DSPS enabled platforms
#
start_sensors()
{
    if [ -c /dev/msm_dsps -o -c /dev/sensors ]; then
        chmod 775 /persist/sensors
        chmod 664 /persist/sensors/sensors_settings
        chown system.root /persist/sensors/sensors_settings

        mkdir /data/misc/sensors
        chmod 775 /data/misc/sensors

        echo 1 > /persist/sensors/settings
        start sensors
    fi
}

start_sensors

