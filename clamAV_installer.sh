#!/bin/bash

echo""
echo""

echo " ██████╗██╗      █████╗ ███╗   ███╗ █████╗ ██╗   ██╗    ██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗     ███████╗██████╗" 
echo "██╔════╝██║     ██╔══██╗████╗ ████║██╔══██╗██║   ██║    ██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     ██╔════╝██╔══██╗"
echo "██║     ██║     ███████║██╔████╔██║███████║██║   ██║    ██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║     █████╗  ██████╔╝"
echo "██║     ██║     ██╔══██║██║╚██╔╝██║██╔══██║╚██╗ ██╔╝    ██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║     ██╔══╝  ██╔══██╗"
echo "╚██████╗███████╗██║  ██║██║ ╚═╝ ██║██║  ██║ ╚████╔╝     ██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗███████╗██║  ██║"
echo " ╚═════╝╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝  ╚═══╝      ╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝╚═╝  ╚═╝"
                                                                                                                              

echo ""

#This is a installer for ClamAV, created by Erick Nunes 04-08-2022


#Install the packets
sudo apt install clamav clamav-daemon -y


#enabling the clamav daemon
systemctl enable clamav-daemon

#starting the clamav daemon
systemctl start clamav-daemon

#enable freshclam
systemctl enable clamav-freshclam

#start freshclam
systemctl start clamav-freshclam

#Installing clamtk
sudo apt install clamtk -y

echo""
echo""

echo "ClamAV are installed on your system."


