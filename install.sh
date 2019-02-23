#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

apt-get update && apt-get install fbi imagemagick apache2 php libapache2-mod-php -y

cd /home/pi/rpi-digital-photo-frame/pictures
sudo mv /home/pi/rpi-digital-photo-frame/index.html /var/www/html/
sudo mv /home/pi/rpi-digital-photo-frame/upload.php /var/www/html/
echo "10" > delay.txt
chmod +x *.sh
mkdir images
chmod 777 images

sudo crontab /home/pi/rpi-digital-photo-frame/pictures/slidecron

echo -e "\n -Done-\n"
