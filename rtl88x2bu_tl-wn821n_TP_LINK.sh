                                                  
sudo apt upgrade -y
sudo apt install git dkms -y

git clone https://github.com/cilynx/rtl88x2bu.git
cd rtl88x2bu
sudo make
sudo make install
sudo modprobe 88x2bu

echo "\nInstallation has finished"
echo "\nReboot your system to apply the changes"
