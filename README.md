Raspberry Pi Picture Frame
=======================

Instructions on how to turn a raspberry pi  into a digital picture frame.


***************************************************
The installer installs screensaver and imagemagick software, sets homedir, 
creates a directory for the pictures, makes shell scripts runable, adds slideshow.sh to run on startup.

```sh
sudo apt update
sudo apt install git -y
git clone https://github.com/MrHDR/rpi-digital-photo-frame.git
cd rpi-digital-photo-frame
chmod +x install.sh; sudo ./install.sh
put your pictures in /rpi/digital-photo-frame/pictures/images
reboot your pi
```
***************************************************
Tips

- you might want to set the screen size to 1080p, to do that do the following.
```
sudo nano /boot/config.txt
```
Change
```
#disable_overscan=1

#framebuffer_width=1280
#framebuffer_height=720
```
to
```
disable_overscan=1

framebuffer_width=1920
framebuffer_height=1080
```

***************************************************
FAQ

-fbi is is displaying the images.

-imagemagick can automatically resize the images being used to help save storage.

-remove_spaces.sh will find any pictures being used by fbi that have spaces in the filenames and remove the spaces.

-This is because the resize script doesn't work with spaces in the filenames.

-resize.sh will resize any images that are larger AND ONLY LARGER than the set size.

-Currently this is set to 1920x1080, but you can set it to whatever resolution you are running at.
