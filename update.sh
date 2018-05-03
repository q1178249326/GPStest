#!/bin/bash
echo "★欢迎使用lowkey 一键搭建web★"
echo "支持lowkey QQ：1178249326"
echo "即将搭建的是4.30版本"
echo "准备开始安装"
read -p "回车后开始安装"
cp /root/winnerpubg/restart.sh /root/restart.sh
chmod +x restart.sh
wget --no-check-certificate -O shadowsocks-all.sh https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocks-all.sh
chmod +x shadowsocks-all.sh
./shadowsocks-all.sh 2>&1 | tee shadowsocks-all.log

echo "☆SS搭建成，请记住连接信息☆"
read -p "任意键继续···" 

curl https://raw.githubusercontent.com/creationix/nvm/v0.13.1/install.sh | bash
source ~/.bash_profile
nvm install v9.8.0
nvm alias default v9.8.0
yum -y install gcc-c++
yum -y install flex
yum -y install bison
wget http://www.tcpdump.org/release/libpcap-1.8.1.tar.gz
tar -zxvf libpcap-1.8.1.tar.gz
cd libpcap-1.8.1
./configure
make
make install
yum install git
git https://github.com/q1178249326/GPSTest.git
cd GPSTest/
npm i
npm i -g pino
npm install -g forever
forever start index.js sniff eth0 10.141.162.20 | pino

echo "成功搭建完毕！！！"
