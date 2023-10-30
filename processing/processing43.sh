#ubuntu 22.04.03 LTS + processing 4.3 Linux 64bits


if [[ $SUDO_USER ]] ; then
  echo "Just use 'bash processing43.sh'"
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
sudo apt -y autoremove

#processing version check
#https://processing.org/download

#4.3
wget https://github.com/processing/processing4/releases/download/processing-1293-4.3/processing-4.3-linux-x64.tgz

sudo tar -xvf processing-4.3-linux-x64.tgz
sudo mv ./processing-4.3 ./processing
sudo mv ./processing /opt/.
sudo bash /opt/processing/install.sh
sudo rm processing-4.3-linux-x64.tgz

#korean font
sudo apt -y install fonts-nanum

#bug fix needed!!
#https://github.com/processing/processing/issues/5308#issuecomment-367534475

#reboot
clear

echo ''
echo 'processing 4.3'
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
