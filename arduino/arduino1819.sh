#ubuntu 20.04.04 LTS + arduino IDE 1.8.19 Linux 64bits

sudo apt update
sudo apt -y upgrade

wget https://downloads.arduino.cc/arduino-1.8.19-linux64.tar.xz
sudo tar -xvf ./arduino-1.8.19-linux64.tar.xz
sudo rm -rf ./arduino-1.8.19-linux64.tar.xz

sudo ./arduino-1.8.19/install.sh
sudo rm -rf ./arduino-1.8.19

sudo usermod -a -G dialout $SUDO_USER
