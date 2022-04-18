#!/bin/zsh
figlet  Pycharm Installer v0.1
echo "\n\n\n\n"
toilet -f future Instructions
echo "1- After the pycharm main screen display, click on engine and\n select\n 'Create Desktop entry'"
echo "\n2- Create entry"
echo "\n3- Verify your menu\n\n\n\n\n"

read -t 15 "Press enter after read the instructions..."
echo ""


DIR=/home/$USER/pycharm-community-2022.1/
if [ -d $DIR ] ; then
	rm -rf pycharm-community-2022.1
fi

if [ -f $HOME/pycharm-community-2022.1.tar.gz] ; then
	rm -rf pycharm-community-2022.1.tar.gz
fi


wget https://download-cdn.jetbrains.com/python/pycharm-community-2022.1.tar.gz


tar -xvf pycharm-community-2022.1.tar.gz

cd $HOME

cd pycharm-community-2022.1/bin

./pycharm.sh

rm -rf pycharm-community-2022.1.tar.gz


echo "\nInstallation is complete"
