cd /root/libpcap-1.8.1/GPSTest/
forever start index.js sniff eth0 10.141.162.20 | pino
echo "启动完成"
