
echo "_____________________          .____     .___  _______    ____  __."
echo "\__    ___/\______   \         |    |    |   | \      \  |    |/ _|."
echo "  |    |    |     ___/  ______ |    |    |   | /   |   \ |      < ."
echo "  |    |    |    |     /_____/ |    |___ |   |/    |    \|    |  \."
echo "  |____|    |____|             |_______ \|___|\____|__  /|____|__ \."
echo "                                       \/             \/         \/."
echo "   _____  __________ _________    ___ ___ _____________________  ____   ____________ "
echo "  /  _  \ \______   \\_   ___ \  /   |   \\_   _____/\______   \ \   \ /   /\_____  \ "
echo " /  /_\  \ |       _//    \  \/ /    ~    \|    __)_  |       _/  \   Y   /   _(__  < "
echo "/    |    \|    |   \\     \____\    Y    /|        \ |    |   \   \     /   /       \."
echo "\____|__  /|____|_  / \______  / \___|_  //_______  / |____|_  /    \___/   /______  /"
echo "        \/        \/         \/        \/         \/         \/                    \/ "

sudo apt install git build-essential linux-headers
git clone https://github.com/RinCat/RTL88x2BU-Linux-Driver.git
cd RTL88x2BU-Linux-Driver
sudo make
sudo make install
sudo modprobe 88x2bu

echo "Reboot your system to conclude the configuration"
