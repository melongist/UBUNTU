#ubuntu 22.04.01 LTS + arduino IDE 1.8.19 Linux 64bits

if [[ $SUDO_USER ]] ; then
  echo "Just use 'bash arduino1819.sh'"
  exit 1
fi

sudo apt update
sudo apt -y upgrade

wget https://downloads.arduino.cc/arduino-1.8.19-linux64.tar.xz
sudo tar -xvf ./arduino-1.8.19-linux64.tar.xz
sudo mv ./arduino-1.8.19 ./arduino
sudo mv ./arduino /opt/.

sudo rm -rf ./arduino-1.8.19-linux64.tar.xz

sudo bash /opt/arduino/install.sh

sudo usermod -a -G dialout $USER

#korean font
sudo apt -y install fonts-nanum

#reboot
clear

echo ''
echo 'arduino 1.8.19 Linux 64 bits'
echo 'for Ubuntu Desktop 22.04.01 installed!'
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
