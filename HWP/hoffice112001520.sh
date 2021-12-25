#hancom hoffice installation
#for Ubuntu Desktop 20.04.3

#referenced
#https://dawoum.ddns.net/wiki/Installing_hoffice_2022_beta_on_Ubuntu

sudo apt update
sudo apt -y upgrade

sudo apt -y install curl

#deb file version check
#https://github.com/hancomgooroom/hancom-toolkit/blob/hancom-2.0/src/resources/hancom-toolkit.json

#download
curl -H "Host: cdn.hancom.com" -H "Referer: https://www.hancom.com/cs_center" -fLO https://cdn.hancom.com/pds/hnc/DOWN/gooroom/hoffice_11.20.0.1520_amd64.deb

#install
sudo apt install ./hoffice_11.20.0.1520_amd64.deb

#file remove
sudo rm hoffice_11.20.0.1520_amd64.deb

#keyboard enter error ( fix
gsettings set org.freedesktop.ibus.engine.hangul use-event-forwarding false

#reboot
clear

echo ''
echo 'hoffice 11.20.0.1520'
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
