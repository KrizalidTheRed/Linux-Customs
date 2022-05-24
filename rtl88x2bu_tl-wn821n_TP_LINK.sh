echo"  _____ _          _    _ _____  _____  __   _   _ "
echo" |_   _| |        | |  | |  _  |/ __  \/  | | \ | |"
echo"   | | | |  ______| |  | |\ V / `' / /'`| | |  \| |"
echo"   | | | | |______| |/\| |/ _ \   / /   | | | . ` |"
echo"   | | | |____    \  /\  / |_| |./ /____| |_| |\  |"
echo"   \_/ \_____/     \/  \/\_____/\_____/\___/\_| \_/"
echo""
echo" .___                 __         .__  .__                "
echo" |   | ____   _______/  |______  |  | |  |   ___________ "
echo" |   |/    \ /  ___/\   __\__  \ |  | |  | _/ __ \_  __ \"
echo" |   |   |  \\___ \  |  |  / __ \|  |_|  |_\  ___/|  | \/"
echo" |___|___|  /____  > |__| (____  /____/____/\___  >__|"   
echo"          \/     \/            \/               \/   "
                                                             
sudo apt upgrade -y
sudo apt install git dkms -y

git clone https://github.com/cilynx/rtl88x2bu.git
cd rtl88x2bu
sudo make
sudo make install
sudo modprobe 88x2bu

echo "\nInstallation has finished"
echo "\nReboot your system to apply the changes"
