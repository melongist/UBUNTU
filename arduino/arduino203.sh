#ubuntu 22.04.01 LTS + arduino IDE 2.0.3 Linux 64bits

if [[ $SUDO_USER ]] ; then
  echo "Just use 'bash arduino203.sh'"
  exit 1
fi

OSVER=$(grep "Ubuntu" /etc/issue|head -1|awk  '{print $2}')

if [ ${OSVER:0:5} != "22.04" ] ; then
  echo ""
  echo "This is not Ubuntu 22.04 LTS!!"
  echo ""
  echo "Ubuntu 22.04 LTS needed!!'"
  echo ""
  exit 1
fi

sudo apt update
sudo apt -y upgrade

wget https://downloads.arduino.cc/arduino-ide/arduino-ide_2.0.3_Linux_64bit.zip
unzip ./arduino-ide_2.0.3_Linux_64bit.zip
sudo mv ./arduino-ide_2.0.3_Linux_64bit ./arduino
sudo mv ./arduino /opt/.

sudo rm -rf ./arduino-ide_2.0.3_Linux_64bit.zip

sudo usermod -a -G dialout $USER

#korean font
sudo apt -y install fonts-nanum


#desktop shortcut
touch arduino.desktop
cp /opt/arduino/resources/app/node_modules/arduino-ide-extension/src/browser/style/ide-logo.png /opt/arduino/arduino-ide.png

echo "[Desktop Entry]" >> arduino.desktop
echo "Version=1.0" >> arduino.desktop
echo "Type=Application" >> arduino.desktop
echo "Name=Arduino IDE 2.0.3" >> arduino.desktop
echo "Icon=/opt/arduino/arduino-ide.png" >> arduino.desktop
echo "Exec=/opt/arduino/arduino-ide" >> arduino.desktop
echo "Comment=The Arduino Software IDE" >> arduino.desktop
echo "Categories=Development;IDE;" >> arduino.desktop
echo "Terminal=false" >> arduino.desktop
sudo mv ./arduino.desktop /usr/share/applications/arduino.desktop
sudo chmod 644 /usr/share/applications/arduino.desktop
sudo chmod +x /usr/share/applications/arduino.desktop

#reboot
clear

echo ''
echo 'arduino IDE 2.0.3 Linux 64 bits'
echo 'for Ubuntu Desktop 22.04 installed!'
echo ''
echo 'system will be rebooted!'
echo ''
COUNT=5
while [ $COUNT -ge 0 ]
do
  echo $COUNT
  ((COUNT--))
  sleep 1
done
echo 'rebooted!'
sleep 1
sudo reboot
