#from https://github.com/HRex39/rtl8852be

#Prerequisite
#disable Secure BOOT in BIOS


if [[ $SUDO_USER ]] ; then
  echo "Just use 'bash realtekwlan.sh'"
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


#sudo apt install -y git
#git clone https://github.com/HRex39/rtl8852be.git -b dev
#tar -czvpf ./rtl8852be.tar.gz ./rtl8852be

wget https://raw.githubusercontent.com/melongist/CSL/master/UBUNTU/realtekwlan/rtl8852be.tar.gz
tar -xzvpf ./rtl8852be.tar.gz

cd rtl8852be

make -j8

sudo make install

sudo modprobe 8852be

cd

sudo rm -rf ./rtl8852be

sudo reboot
