#!/bin/bash

echo Current installed zoom version
echo $(apt-cache policy zoom | grep Installed)

echo Downloading latest version
wget https://zoom.us/client/latest/zoom_amd64.deb

echo Installing latest version
sudo apt install ./zoom_amd64.deb

echo Cleaning up deb file
rm ./zoom_amd64.deb

echo Current installed zoom version
echo $(apt-cache policy zoom | grep Installed)