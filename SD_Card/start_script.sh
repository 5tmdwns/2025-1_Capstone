#!/bin/bash
### BEGIN INIT INFO
# Provides:          startup_script
# Required-Start:    $all
# Default-Start:     S
# Default-Stop:
# Description:       Custom startup script for Petalinux
### END INIT INFO

LOG_DIR="/home/petalinux/log"
LOG_FILE="$LOG_DIR/start.log"

#mkdir -p $LOG_DIR
#echo "[INFO] Boot start at $(date)" >> $LOG_FILE
#
#/home/petalinux/capstone/final/object_following >> $LOG_FILE 2>&1 &
#
#if [ $? -eq 0 ]; then
#    echo "[DEBUG] Launched object_following successfully at $(date)" >> $LOG_FILE
#else
#    echo "[ERROR] Failed to launch object_following at $(date)" >> $LOG_FILE
#fi
#
#exit 0
