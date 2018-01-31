#! /bin/sh
### BEGIN INIT INFO
# Provides:          slideshow.sh
# Required-Start:    \$remote_fs \$syslog
# Required-Stop:     \$remote_fs \$syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Start daemon at boot time
# Description:       Enable service provided by daemon.
### END INIT INFO

HOMEDIR=`/home/pi/rpi-digital-photo-frame/pictures`
# Where are the image files?
IMG_PATH="$HOMEDIR/images/"
# How long between transitions?
TIMEOUT=`cat $HOMEDIR/delay.txt`

cd $IMG_PATH

while true
do
        ../remove_spaces.sh
        ../resize.sh
        ../rotate.sh

        FILE_LIST=`ls -1 *.jpg`
        FILES_COUNT=`ls -1 *.jpg | wc -l`

        killall -9 fbi
        fbi -T 1 -noverbose -u -a -t $TIMEOUT $FILE_LIST
        sleep $(($TIMEOUT*$FILES_COUNT))
done