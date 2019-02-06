#!/bin/bash
# Colors
ESC_SEQ="\x1b["
COL_RESET=$ESC_SEQ"39;49;00m"
COL_RED=$ESC_SEQ"31;01m"
COL_GREEN=$ESC_SEQ"32;03m"
COL_YELLOW=$ESC_SEQ"1;93m"
COL_BLUE=$ESC_SEQ"34;01m"
COL_PURPLE=$ESC_SEQ"1;35m"
COL_CYAN=$ESC_SEQ"36;01m"
COL_WHITE=$ESC_SEQ"1;97m"
echo -e "$COL_GREEN "
#  ________%%%%%%%%%%%%%%%%%%%_________%%%%%%%%%%%%%%%%%%%%%%%%%%__%%%%%%%%%%%%%%%%%
#  \______%\%%%%____%%%%______\_%%%___%\_______%%___.__.______%_/%%|_%%%%%%%%%%%%%%%
#  %|%%%%|%%\%%/%%%%\%%/%%___//%%%%\%%\/\_%%__%\<%%%|%%|\____%\\%%%__\%%%%%%%%%%%%%%
#  %|%%%%`%%%\|%%%|%%\%\___%\%\%%%%%\____|%%|%\/%\___%%||%%|_>%>|%%|%%%%%%%%%%%%%%%%
#  /_______%%/|___|%%//____%%>%\______%%/|__|%%%%/%____||%%%__/%|__|%%%%%%%%%%%%%%%%
#  %%%%%%%%\/%%%%%%\/%%%%%%\/%%%%%%%%%\/%%%%%%%%%\/%%%%%|__|%%%%%%%%%%%%%%%%%%%%%%%%
#  %%%_____%%%%%%%%%%%%__%%%%%%%%%%%.___%%%%%%%%%%%%%%%%%%%__%%%%%%%%%%%.__%%%.__%%%
#  %%/%%_%%\%%%__%__%_/%%|_%%____%%%|%%%|%%____%%%%_______/%%|_%_____%%%|%%|%%|%%|%%
#  %/%%/_\%%\%|%%|%%\\%%%__\/%%_%\%%|%%%|%/%%%%\%%/%%___/\%%%__\\__%%\%%|%%|%%|%%|%%
#  /%%%%|%%%%\|%%|%%/%|%%|%(%%<_>%)%|%%%||%%%|%%\%\___%\%%|%%|%%%/%__%\_|%%|__|%%|__
#  \____|__%%/|____/%%|__|%%\____/%%|___||___|%%//____%%>%|__|%%(____%%/|____/|____/
#  %%%%%%%%\/%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\/%%%%%%\/%%%%%%%%%%%%%\/%%%%%%%%%%%%%

#@oo0sn3rp0oo
echo -e "$COL_RESET"
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
