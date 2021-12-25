#processing 3.5.4 installation
#for Ubuntu Desktop 20.04.3

#referenced
#http://www.artsnova.com/processing/Installing-Processing-on-Ubuntu-LTS-Focal-Fossa.html

sudo apt update
sudo apt -y upgrade

#processing version check
#https://processing.org/download

#download
wget https://github.com/processing/processing/releases/download/processing-0270-3.5.4/processing-3.5.4-linux64.tgz

#install
sudo tar -xvf processing-3.5.4-linux64.tgz
sudo mv ./processing-3.5.4 ./processing
sudo mv ./processing /opt/.
sudo bash /opt/processing/install.sh

#file remove
sudo rm processing-3.5.4-linux64.tgz

#reboot
sudo reboot

