#!/bin/bash

echo "Initializing environment..."

export LD_LIBRARY_PATH=~/usr/lib
#~/bin/gpg2 --no-tty --batch --quiet --no-mdc-warning --passphrase-file ~/passphrase.txt --decrypt ~/pwd.gpg > test.txt
~/cf login --skip-ssl-validation -a https://api.system.laba.ecsteam.io -o sandbox -s cftop -u kkellner -p $(~/bin/gpg2 --no-tty --batch --quiet --no-mdc-warning --passphrase-file ~/passphrase.txt --decrypt ~/pwd.gpg) &> /dev/null 
clear
~/cf top -no-top-check
echo "Thanks for using top Cloud Foundry plugin!!"
