#!/bin/bash

WORKING_DIR=/home/parrot/jetbrains-toolbox-1.23.11731
if [ -d "$WORKING_DIR" ]; then 
  echo "removing existent folder"
  rm -rf $WORKING_DIR; 
fi

if [ -f $HOME/jetbrains-toolbox-1.23.11731.tar.gz ]; then
  echo "removin existent file"
  rm -rf jetbrains-toolbox-1.23.11731.tar.gz
fi


wget https://download-cdn.jetbrains.com/toolbox/jetbrains-toolbox-1.23.11731.tar.gz

tar -xvf jetbrains-toolbox-1.23.11731.tar.gz

cd $HOME

cd jetbrains-toolbox-1.23.11731

sudo chmod 777 jetbrains-toolbox

./jetbrains-toolbox

#Created by Erick Nunes
