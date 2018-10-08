#!/bin/bash

#delete local block chain files to start syncing from scratch
cd ~/wagerr-2.0.1/bin
./wagerr-cli stop
cd ~/.wagerr

read -p "Do you want to delete Chainstate? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then

rm -r chainstate
fi

read -p "Do you want to delete Database? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then

rm -r database
fi

read -p " Do you want to delete Blocks? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then

rm -r blocks
fi

#start Masternode
cd ~/wagerr-2.0.1/bin
./wagerrd &
echo -e "Masternode is now syncing from scratch"

