#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

apt-get update && apt-get install fbi imagemagick

cd /home/pi/rpi-digital-photo-frame/pictures
echo "10" > delay.txt
chmod +x *.sh
mkdir images
chmod 777 images

sudo crontab /home/pi/rpi-digital-photo-frame/pictures/slidecron
chmod +x /etc/init.d/slideshow
update-rc.d slideshow defaults 91

echo -e "\n -Done-\n"