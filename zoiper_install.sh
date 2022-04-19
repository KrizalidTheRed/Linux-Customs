#!/bin/zsh

echo "Are you OS is Debian based?"

read yes

if[yes == "Yes" || Debian=="yes"]; then
   echo "\nDownloading Zoiper in Debian Based"
   wget https://www.zoiper.com/en/voip-softphone/download/zoiper5/for/linux-deb
   echo "Do you want to install the DEB package?"
   read yes_2
   if[yes_2 == "Yes"]
	echo "\nThe package will be installed"
	sudo dpkg -i Zoiper5_5.5.10_x86_64.deb
	sudo rm -rf Zoiper5_5.5.10_x86_64.deb
else
   echo "\Download Zoiper in Redhat based RPM"
   wget https://www.zoiper.com/en/voip-softphone/download/zoiper5/for/linux-rpm
   echo "Do you want to install the RPM package?"
   read yes_3
	if[yes_3 == "Yes"]
	echo "\nThe package will be installed"
	sudo dpkg -i Zoiper5_5.5.10_x86_64.rpm
	sudo rm -rf Zoiper5_5.5.10_x86_64.rpm
fi


echo "Installation is completed"

