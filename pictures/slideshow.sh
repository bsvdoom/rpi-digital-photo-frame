#!/bin/sh

# How long between transitions?
TIMEOUT=`cat /home/pi/rpi-digital-photo-frame/pictures/delay.txt`

cd /home/pi/rpi-digital-photo-frame/pictures

while true
do
        /home/pi/rpi-digital-photo-frame/pictures/remove_spaces.sh
        /home/pi/rpi-digital-photo-frame/pictures/resize.sh
        /home/pi/rpi-digital-photo-frame/pictures/rotate.sh

        FILE_LIST=`ls -1 *.jpg`
        FILES_COUNT=`ls -1 *.jpg | wc -l`

        killall -9 fbi
        fbi -T 1 -noverbose -u -a -t $TIMEOUT $FILE_LIST
        sleep $(($TIMEOUT*$FILES_COUNT))
done