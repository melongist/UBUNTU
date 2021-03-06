#processing 3.5.4 installation
#for Ubuntu Desktop 20.04.3

#referenced
#http://www.artsnova.com/processing/Installing-Processing-on-Ubuntu-LTS-Focal-Fossa.html

sudo apt update
sudo apt -y upgrade
sudo apt -y autoremove

#processing version check
#https://processing.org/download

#3.5.4
wget https://github.com/processing/processing/releases/download/processing-0270-3.5.4/processing-3.5.4-linux64.tgz
sudo tar -xvf processing-3.5.4-linux64.tgz
sudo mv ./processing-3.5.4 ./processing
sudo mv ./processing /opt/.
sudo bash /opt/processing/install.sh
sudo rm processing-3.5.4-linux64.tgz

#korean font
sudo apt -y install fonts-nanum

#bug fix needed!!
#https://github.com/processing/processing/issues/5308#issuecomment-367534475

#reboot
clear

echo ''
echo 'processing 3.5.4'
echo 'for Ubuntu Desktop 20.04.3 installed!'
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
