#!/bin/bash

###################################### README #######################################################
# 1- This is compatible with TP-LINK TL-WN821n V5/V6                                                #
# 2- Use this script to Debian based distros                                                        #
# 3- Execute with super user privileges                                                             #
# ###################################################################################################

echo "  ______    __         _       __    _   __   ____    ___    ___    _   __"
echo " /_  __/   / /        | |     / /   / | / /  ( __ )  |__ \  <  /   / | / /"
echo "  / /     / /   ______| | /| / /   /  |/ /  / __  |  __/ /  / /   /  |/ /" 
echo " / /     / /___/_____/| |/ |/ /   / /|  /  / /_/ /  / __/  / /   / /|  /"
echo "/_/     /_____/       |__/|__/   /_/ |_/   \____/  /____/ /_/   /_/ |_/"
echo  "    ____  ________    ____ _______ ___   ________  __"
echo  "   / __ \/_  __/ /   ( __ <  / __ \__ \ / ____/ / / /"
echo  "  / /_/ / / / / /   / __  / / /_/ /_/ // __/ / / / / "
echo  " / _, _/ / / / /___/ /_/ / /\__, / __// /___/ /_/ /  "
echo  "/_/ |_| /_/ /_____/\____/_//____/____/_____/\____/"
                                                                          

echo "deb [arch=amd64,arm64,armhf] http://deb.volian.org/volian/ scar main" | sudo tee /etc/apt/sources.list.d/volian-archive-scar-unstable.list
wget -qO - https://deb.volian.org/volian/scar.key | sudo tee /etc/apt/trusted.gpg.d/volian-archive-scar-unstable.gpg > /dev/null
sudo apt update && sudo apt install nala -y
sudo nala install git linux-headers-generic build-essential dkms
git clone https://github.com/Mange/rtl8192eu-linux-driver
cd rtl8192eu-linux-driver
sudo dkms add .
sudo dkms install rtl8192eu/1.0
echo "blacklist rtl8xxxu" | sudo tee /etc/modprobe.d/rtl8xxxu.conf
echo -e "8192eu\n\nloop" | sudo tee /etc/modules
echo "options 8192eu rtw_power_mgnt=0 rtw_enusbss=0" | sudo tee /etc/modprobe.d/8192eu.conf
sudo update-grub; sudo update-initramfs -u
systemctl reboot -i
sudo lshw -c network

######### Created By Erick ###########
