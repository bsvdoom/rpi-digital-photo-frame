Raspberry Pi Zero W Picture Frame
=======================

Instructions on how to turn a pi zero w system into a digital picture frame.


***************************************************
The installer installs screensaver and imagemagick software, sets homedir, 
creates a directory for the pictures, makes shell scripts runable, adds slideshow.sh to run on startup.

```sh
sudo apt update
sudo apt install git -y
git clone https://github.com/MrHDR/rpi-digital-photo-frame.git
chmod +x rpi-digital-photo-frame/install.sh; sudo ./rpi-digital-photo-frame/install.sh
```
***************************************************
FAQ

-fbi is is displaying the images.

-imagemagick can automatically resize the images being used to help save storage.

-remove_spaces.sh will find any pictures being used by fbi that have spaces in the filenames and remove the spaces.

-This is because the resize script doesn't work with spaces in the filenames.

-resize.sh will resize any images that are larger AND ONLY LARGER than the set size.

-Currently this is set to 1920x1080, but you can set it to whatever resolution you are running at.
