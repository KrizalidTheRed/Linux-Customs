sudo apt install git build-essential linux-headers-$(uname -r)
git clone https://github.com/RinCat/RTL88x2BU-Linux-Driver.git
cd RTL88x2BU-Linux-Driver
make 
sudo make install
sudo modprobe 88x2bu
