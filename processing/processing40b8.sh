#processing 4.0b8 by installation
#for Ubuntu Desktop 20.04

#referenced
#http://www.artsnova.com/processing/Installing-Processing-on-Ubuntu-LTS-Focal-Fossa.html

if [[ $SUDO_USER ]] ; then
  echo "Just use 'bash processing40b8.sh'"
  exit 1
fi

sudo apt update
sudo apt -y upgrade
sudo apt -y autoremove

#processing version check
#https://processing.org/download

#4.0b7
wget https://github.com/processing/processing4/releases/download/processing-1283-4.0b8/processing-4.0b8-linux-x64.tgz
sudo tar -xvf processing-4.0b8-linux-x64.tgz
sudo mv ./processing-4.0b8 ./processing
sudo mv ./processing /opt/.
sudo bash /opt/processing/install.sh
sudo rm processing-4.0b8-linux-x64.tgz

#korean font
sudo apt -y install fonts-nanum

#bug fix needed!!
#https://github.com/processing/processing/issues/5308#issuecomment-367534475

#reboot
clear

echo ''
echo 'processing 4.0b8'
echo 'for Ubuntu Desktop 20.04installed!'
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
