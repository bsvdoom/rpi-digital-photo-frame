find -name "/home/pi/rpi-digital-photo-frame/pictures* *" -type f | rename 's/ /_/g'
find -name "/home/pi/rpi-digital-photo-frame/pictures*JPG*" -type f | rename 's/JPG/jpg/g'
