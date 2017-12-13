#!/usr/bin/env bash

function install_config() {
sudo apt-get update 
sudo apt-get upgrade
wget "https://valtman.name/files/telegram-bot-171213-nightly-linux"
mv telegram-bot-171213-nightly-linux tg
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt-get install g++-4.7 c++-4.7
sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev lua-socket lua-sec lua-expat libevent-dev make unzip git redis-server autoconf g++ libjansson-dev libpython-dev expat libexpat1-dev
sudo apt-get install lua-lgi
sudo apt-get install libreadline6 libreadline-dev libreadline-dev libreadline6-dev libconfig-dev libssl-dev tmux lua5.2 liblua5.2-dev lua-socket lua-sec lua-expat libevent-dev make unzip redis-server autoconf git g++ libjansson-dev libpython-dev expat libexpat1-dev ppa-purge python3-pip python3-dev software-properties-common python-software-properties 
sudo apt-get install libnotify-dev
sudo apt-get install screen
sudo apt-get install psmisc
sudo apt-get install tmux
sudo apt-get install libreadline-dev libssl-dev lua5.2 liblua5.2-dev git make unzip redis-server curl libcurl4-gnutls-dev
sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev libevent-dev make autoconf unzip git redis-server g++ libjansson-dev libpython-dev expat libexpat1-dev
sudo apt-get install libreadline-dev
sudo apt-get install libreadline-dev 
sudo apt-get install libreadline6 
sudo apt-get install libreadline6-dev
sudo apt-get install libconfig-dev 
sudo apt-get install libssl-dev 
sudo apt-get install lua5.2 
sudo apt-get install liblua5.2-dev 
sudo apt-get install lua-socket 
sudo apt-get install lua-sec 
sudo apt-get install lua-expat 
sudo apt-get install libevent-dev 
sudo apt-get install redis-server 
sudo apt-get install libjansson-dev 
sudo apt-get install libpython-dev 
sudo apt-get install expat libexpat1-dev 
sudo apt-get install libreadline-dev
sudo apt-get install libreadline6 
sudo apt-get install libreadline6-dev
sudo apt-get install libconfig-dev 
sudo apt-get install libssl-dev 
sudo apt-get install lua5.2 
sudo apt-get install liblua5.2-dev 
sudo apt-get install lua-socket 
sudo apt-get install lua-sec 
sudo apt-get install lua-expat 
sudo apt-get install libevent-dev 
sudo apt-get install make 
sudo apt-get install unzip 
sudo apt-get install git 
sudo apt-get install redis-server 
sudo apt-get install autoconf 
sudo apt-get install g++ 
sudo apt-get install libjansson-dev 
sudo apt-get install libpython-dev 
sudo apt-get install expat libexpat1-dev 
sudo apt-get install ppa-purge 
sudo apt-get install python3-pip 
sudo apt-get install python3-dev
sudo apt-get install software-properties-common
sudo apt-get install python-software-properties
sudo apt-get dist-upgrade
sudo ppa-purge
sudo apt-get install g++-4.7 -y c++-4.7 -y
sudo apt-get install libreadline-dev -y libconfig-dev -y libssl-dev -y lua5.2 -y liblua5.2-dev -y lua-socket -y lua-sec -y lua-expat -y libevent-dev -y make unzip git redis-server autoconf g++ -y libjansson-dev -y libpython-dev -y expat libexpat1-dev -y
sudo apt-get install screen -y
sudo apt-get install tmux -y
sudo apt-get install libstdc++6 -y
sudo apt-get install lua-lgi -y
sudo apt-get install libnotify-dev -y
sudo apt-get install libconfig++9v5:i386
sudo apt-get install libconfig++9v5
sudo apt-get update 
sudo apt-get upgrade
chmod +x tg
cd ..
mkdir .telegram-bot
cd .telegram-bot
> config
cd ..
cd ESET-Joiner
RED='\033[0;31m'
NC='\033[0m'
CYAN='\033[0;36m'
echo -e "${CYAN} Installation Completed.Created By : @To_My_Amigos And Powered By : @ESETAdvertiser${NC}"
}
function install_luarocks() {
wget http://luarocks.org/releases/luarocks-2.4.3.tar.gz
tar zxpf luarocks-2.4.3.tar.gz
cd luarocks-2.4.3
./configure; sudo make bootstrap
sudo luarocks install luasec
sudo luarocks install luasocket
sudo luarocks install redis-lua
sudo luarocks install lua-term
sudo luarocks install serpent
sudo luarocks install dkjson
sudo luarocks install Lua-cURL
cd ..
sudo apt-get upgrade
sudo apt-get update
RED='\033[0;31m'
NC='\033[0m'
CYAN='\033[0;36m'
echo -e "${CYAN} Installation Completed.Created By : @To_My_Amigos And Powered By : @ESETAdvertiser${NC}"
exit 
}

function start_bot() {
    ./tg -p esetjoiner -s ~/ESET-Joiner/ESETJoiner.lua
}

function login_bot() {
    ./tg -p esetjoiner --login --phone=${phone_number}
}

case $1 in
    install)
	    install_config
    exit ;;
	    luarocks)
	    install_luarocks
    exit ;;
    login)
        echo "Enter Your Bot Phone Number : "
        read phone_number
        login_bot ${phone_number}
    exit ;;
	help)
		echo "  Commands :                                                           "
		echo "	install - Install All Needed Files .                                 "
		echo "	luarocks - Install All Lua Files .                                   "
		echo "	login - Access Into Your Telegram Account .                          "
		echo "	run - For Runnig Soure Automatically .                               "
		echo "	help - Shows This Message .                                          "
	exit ;;
	run)
       start_bot $@
	exit ;;
esac
RED='\033[0;31m'
NC='\033[0m'
CYAN='\033[0;36m'
echo -e "${CYAN}Please Send [ ./ESET.sh help ]${NC}"
exit 0