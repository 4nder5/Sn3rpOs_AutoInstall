#!/bin/bash
#DnsCryptProxy AutoInstaller
#@oo0sn3rp0oo

echo -e "$COL_YELLOW Installing DnSCryptProxy $COL_RESET"
sleep 3
chattr -ie /etc/resolv.conf
rm /etc/resolv.conf
echo "nameserver 127.0.0.1" > /etc/resolv.conf
chattr +i /etc/resolv.conf
lsattr /etc/resolv.conf
echo -e "$COL_CYAN Should Show Attributes +i $COL_RESET"
sleep 4

apt install dnscrypt-proxy -y
cd /opt
wget https://github.com/jedisct1/dnscrypt-proxy/releases/download/2.0.17/dnscrypt-proxy-linux_x86_64-2.0.17.tar.gz
tar xvzf dnscrypt-proxy-linux_x86_64-2.0.17.tar.gz
cd linux*
cp example-dnscrypt-proxy.toml dnscrypt-proxy.toml
chmod +x dnscrypt-proxy
./dnscrypt-proxy -service uninstall
./dnscrypt-proxy -service install
./dnscrypt-proxy -service start
echo -e  "$COL_RED DONE $COL_RESET"
cd ..
rm dnscrypt-proxy-linux_x86_64-2.0.17.tar.gz
sleep 4
