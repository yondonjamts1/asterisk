#!/bin/bash
echo "IT IS PROTOTYPE VERSION, IF YOU HAVE ANY ISSUE, CONTACT TO US" 
echo "yondonjamts.ganzorig@gmail.com"
sleep 4
echo "You think Mr.Yondonjamts' awesome? [y,n]"
read ans
if [ "$ans" == "y" ] || [ "$ans" == "Y" ] || [ "$ans" == "yes" ] || [ "$ans" == "YES" ] || [ "$ans" == "Yes" ]; then
sudo apt update
sudo apt-get -y install uuid-dev libjansson-dev libxml2-dev libsqlite3-dev ncurses-dev wget
wget http://downloads.asterisk.org/pub/telephony/asterisk/asterisk-15-current.tar.gz
tar xzvf asterisk-15-current.tar.gz
cd asterisk-15*
sudo ./configure
sudo make
sudo make install
sudo make samples
sudo ldconfig
echo "Congratulations, you've installed all you need ;)"
else
echo "Try again later :D"
fi
