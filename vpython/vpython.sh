#ubuntu 22.04.01 LTS + vpython

if [[ $SUDO_USER ]] ; then
  echo "Just use 'bash vpython.sh'"
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

sudo apt -y install pip

pip install vpython
