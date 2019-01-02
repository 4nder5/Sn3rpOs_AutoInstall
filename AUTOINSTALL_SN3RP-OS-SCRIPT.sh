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

echo -e "$COL_GREEN
    <SN3RPOS AUTOINSTALLER SCRIPT>
    Copyright (C) 2018  @oo0sn3rp0oo

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.


$COL_RESET"

echo -e "$COL_CYAN This script will install Sn3rpOs On Your Debian system."
echo -e "$COL_RESET"
read -p "Continue y/n" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then

apt update
dpkg --add-architecture i386; apt update
echo -e "$COL_YELLOW Installing a bunch of shit! Please Wait... $COL_RESET"
sleep 4
chattr -ie /etc/resolv.conf
echo "nameserver 208.67.222.222" > /etc/resolv.conf
apt install devscripts syslinux-common transmission syslinux isolinux hddtemp lm-sensors mtools yad curl baobab git live-build cdebootstrap gimp mat conky-all cowsay-off fortunes-off vlc network-manager-gnome apt-transport-tor apt-transport-https thunderbird enigmail xul-ext-torbirdy xscreensaver* synaptic aptitude dtach laptop-detect multiarch-support hwinfo lshw tor privoxy golang xorriso resolvconf libsodium* firmware-linux-nonfree firmware-linux-free firmware-linux firmware-misc-nonfree android-tools-adb android-tools-fastboot gpart intel-microcode i8kutils dkms firejail transmission dirmngr -y
echo -e "$COL_RED DONE $COL_RESET"
sleep 4

echo -e "$COL_GREEN "
/usr/games/cowsay -f eyes "We are watching the NSA!"

echo -e "$COL_WHITE TINFOILSEC $COL_RESET"
echo -e "$COL_BLUE Good Luck Script Kiddies $COL_RESET"
echo -e "$COL_RED ...Begin Autoinstall Sn3rpOs... $COL_RESET"
sleep 2


cd /root
wget https://raw.githubusercontent.com/r00tabega/Sn3rpOs_AutoInstall/master/torrc.tar.gz
tar xvzf torrc.tar.gz
rm torrc.tar.gz
mv torrc /etc/tor
rm /tmp/foo7
dtach -n /tmp/foo7 /usr/bin/tor 

sleep 7

echo -e "$COL_BLUE ...Recieving Custom Repo Keys $COL_RESET" 
echo -e "$COL_WHITE Please Wait... $COL_RESET"
sleep 5

gpg --recv-keys 74A941BA219EC810 A6A19B38D3D831EF EB3E94ADBE1229CF 8B48AD6246925553 7638D0442B90D010 C5E224500C1289C0 F57D4F59BD3DF454 A6616109451BBBF2 EF0F382A1A7B6500 EAF9B4E3C0145138 ED444FF07D8D0BF6; gpg --export --armor | apt-key add -

echo -e "$COL_RED Keys Verified $COL_RESET"
sleep 5
echo -e "$COL_WHITE Writing Custom Repo Lists $COL_RESET"

echo "deb [arch=i386,amd64] tor+https://archive.kali.org/kali/ kali-rolling non-free contrib main" > /etc/apt/sources.list
echo "deb-src tor+https://archive.kali.org/kali/ kali-rolling non-free contrib main" >> /etc/apt/sources.list

echo "deb [arch=amd64,i386] tor+http://packages.linuxmint.com sylvia main upstream import" > /etc/apt/sources.list.d/lmde.list

echo "deb-src tor+http://packages.linuxmint.com sylvia main upstream import" >> /etc/apt/sources.list.d/lmde.list

echo "deb [arch=amd64] tor+https://packages.microsoft.com/debian/stretch/prod stretch main" > /etc/apt/sources.list.d/microsoft.list

echo "deb tor+http://moblock-deb.sourceforge.net/debian stretch main" > /etc/apt/sources.list.d/pgl.list

echo "deb [arch=i386,amd64] tor+http://download.mono-project.com/repo/debian preview main" > /etc/apt/sources.list.d/mono.list

echo "deb tor+http://vwakviie2ienjx6t.onion/debian stretch main" > /etc/apt/sources.list.d/stretch.list

echo "deb tor+http://vwakviie2ienjx6t.onion/debian stretch-backports main" > /etc/apt/sources.list.d/stretch-backports.list

echo "deb tor+https://download.sublimetext.com/ apt/stable/" > /etc/apt/sources.list.d/sublime-text.list

echo "deb tor+http://linux.teamviewer.com/deb stable main" > /etc/apt/sources.list.d/teamviewer.list
echo "deb tor+http://linux.teamviewer.com/deb preview main" >> /etc/apt/sources.list.d/teamviewer.list

echo "deb tor+http://deb.torproject.org/torproject.org stretch main" > /etc/apt/sources.list.d/tor.list
echo "deb-src tor+http://deb.torproject.org/torproject.org stretch main" >>  /etc/apt/sources.list.d/tor.list


echo -e "$COL_RED DONE $COL_RESET"
sleep 4

echo -e "$COL_YELLOW Updating New Repos... $COL_RESET"
sleep 3

sleep 7
sudo apt update 

echo -e "$COL_CYAN Installing Sublime Teamviewer $COL_RESET"
sleep 4
sudo apt install sublime-text teamviewer bleachbit -y
echo -e "$COL_RED DONE $COL_RESET"
sleep 4

echo -e "$COL_YELLOW Setting up global privoxy settings $COL_RESET"
sleep 4
echo "export http_proxy='http://127.0.0.1:8118'" > /etc/environment
echo "export https_proxy='http://127.0.0.1:8118'" >> /etc/environment
echo "export ftp_proxy='http://127.0.0.1:8118'" >> /etc/environment
gsettings list-recursively org.gnome.system.proxy
sleep 3
gsettings set org.gnome.system.proxy mode 'manual' 
gsettings set org.gnome.system.proxy.http enabled true
gsettings set org.gnome.system.proxy.http host '127.0.0.1'
gsettings set org.gnome.system.proxy.http port 8118
gsettings set org.gnome.system.proxy.https host '127.0.0.1'
gsettings set org.gnome.system.proxy.https port 8118
gsettings set org.gnome.system.proxy.ftp host '127.0.0.1'
gsettings set org.gnome.system.proxy.ftp port 8118
gsettings set org.gnome.system.proxy.socks host '127.0.0.1'
gsettings set org.gnome.system.proxy.socks port 9050
gsettings list-recursively org.gnome.system.proxy
sleep 3
echo -e "$COL_GREEN Your IP appears to be $COL_RESET"
wget -qO- icanhazip.com
sleep 3
export http_proxy='http://127.0.0.1:8118'
export https_proxy='http://127.0.0.1:8118'
export ftp_proxy='http://127.0.0.1:8118'

echo "forward-socks5t   /               127.0.0.1:9050 ." >> /etc/privoxy/config
echo "forward-socks4   /               127.0.0.1:9050 ." >> /etc/privoxy/config
echo "forward-socks4a   /               127.0.0.1:9050 ." >> /etc/privoxy/config
echo -e "$COL_RED Restarting proxies... $COL_RESET"
service privoxy restart
killall tor
rm -rf /tmp/foo1
dtach -n /tmp/foo1 /usr/bin/tor
sleep 7
echo -e "$COL_CYAN Your Privoxy IP appears to be $COL_RESET" 
wget -qO- icanhazip.com

echo -e "$COL_YELLOW Installing LXMED 'Menu Editor' $COL_RESET"
sleep 3
mkdir /root/Desktop
cd /root/Desktop
wget https://liquidtelecom.dl.sourceforge.net/project/lxmed/lxmed-20120515.tar.gz
tar xvzf lxmed-20120515.tar.gz
cd lxmed
chmod +x install.sh
./install.sh
echo -e "$COL_RED DONE $COL_RESET"
cd /root/Desktop
rm -rf lxmed*
sleep 4

echo -e "$COL_YELLOW Install Custom Root Scripts $COL_RESET"
sleep 4
cd /root
wget https://raw.githubusercontent.com/r00tabega/Sn3rpOs_AutoInstall/master/root-scripts.tar.gz
tar xvzf root-scripts.tar.gz
rm root-scripts.tar.gz

echo -e "$COL_RED DONE $COL_RESET"
sleep 4 

# echo -e "$COL_BLUE Installing RiseupVPN $COL_RESET"

# apt install snapd -y
# service snapd start
# snap install --classic riseup-vpn
# mount /var/lib/snapd/snaps/core_5897.snap /snap/core/5897
# update-menus
# /usr/share/kali-menu/update-kali-menu
# pkill -e -f riseup-vpn
# /snap/bin/riseup-vpn.bitmask-root firewall stop
# test -f ~/.config/leap/systray.pid && rm -v ~/.config/leap/systray.pid
# 
# echo -e "$COL_RED DONE $COL_RESET"
# echo -e "$COL_CYAN Please Donate @ https://riseup.net/vpn/donate $COL_RESET"
# sleep 7

#echo -e "$COL_BLUE Installing Bitmask $COL_RESET"

# cd /usr/local/bin
# wget https://raw.githubusercontent.com/r00tabega/Sn3rpOs_AutoInstall/master/usr-local-bin-bitmask.tar.gz
# tar xvzf usr-local-bin-bitmask.tar.gz
# rm usr-local-bin-bitmask.tar.gz
# sudo apt install leap-archive-keyring bitmask -y
# sudo apt autoremove -y
# echo -e "$COL_WHITE Use LXMED to add a menu entry $COL_RESET"
# sleep 4



echo -e "$COL_YELLOW Installing Veracrypt Please Follow The Window Prompts $COL_RESET" 
#VeraCrypt Install
cd /tmp
wget https://cytranet.dl.sourceforge.net/project/veracrypt/VeraCrypt%201.23/veracrypt-1.23-setup.tar.bz2
tar xf veracrypt-1.23-setup.tar.bz2
./veracrypt-1.23-setup-gui-x64
rm veracrypt*

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

echo -e "$COL_YELLOW Installing Grub Customizer $COL_RESET"
sleep 3
cd /tmp
apt update
apt install grub-customizer -y

echo -e "$COL_YELLOW Installing Peer Guardian... $COL_RESET"
apt install pglcmd pgld pglgui -y
echo -e "$COL_WHITE Follow The White Rabbit $COL_RESET"
sleep 5

echo -e "$COL_YELLOW FireJailing Firefox and Thunderbird $COL_RESET"
sleep 4
sed -i '/Exec/d' /usr/share/applications/firefox-esr.desktop
echo "Exec=firejail /usr/lib/firefox-esr/firefox-esr %u" >> /usr/share/applications/firefox-esr.desktop
sed -i '/Exec/d' /usr/share/applications/thunderbird.desktop
echo "Exec=firejail /usr/bin/thunderbird %u" >> /usr/share/applications/thunderbird.desktop
echo -e "$COL_RED DONE $COL_RESET"
sleep 4

echo -e "$COL_YELLOW Fucking up Openssl to fix openvpn... $COL_RESET"
sed -i '/MinProtocol/d' /etc/ssl/openssl.cnf
echo "MinProtocol = TLSv1" >> /etc/ssl/openssl.cnf
sleep 4

echo -e "$COL_CYAN Installing RefractaSnapshot and RefractaInstaller $COL_RESET"
sleep 4

cd /root
rm -rf refracta-debs
mkdir refracta-debs
cd refracta-debs
wget https://netix.dl.sourceforge.net/project/refracta/tools/refractainstaller-base_9.4.3_all.deb
wget https://netix.dl.sourceforge.net/project/refracta/tools/refractainstaller-gui_9.4.3_all.deb
wget https://netix.dl.sourceforge.net/project/refracta/tools/refractasnapshot-base_10.1.1_all.deb
wget https://netix.dl.sourceforge.net/project/refracta/tools/refractasnapshot-gui_10.0.3_all.deb
dpkg -i refracta*
apt --fix-broken install -y 

echo -e "$COL_YELLOW You dont have to install grub to anywhere but it must be on your system! $COL_RESET"
sleep 5
apt install grub-pc -y


sed -i '/Exec/d' /usr/share/applications/refractainstaller.desktop
echo "Exec=gksu 'x-terminal-emulator -e refractainstaller -d'" >> /usr/share/applications/refractainstaller.desktop
sed -i '/Exec/d' /usr/share/applications/refractasnapshot.desktop
echo "Exec=gksu 'x-terminal-emulator -e refractasnapshot-gui'" >> /usr/share/applications/refractasnapshot.desktop
cd
echo -e "$COL_RED DONE $COL_RESET"
sleep 4

xhost +
echo -e "$COL_YELLOW Installing Sn3rpOs MDM Theme $COL_RESET"
apt install mdm mdm-themes -t sylvia -y
cd /usr/share/mdm/themes

wget https://raw.githubusercontent.com/r00tabega/Sn3rpOs_AutoInstall/master/Sn3rpOs%20Login.tar.gz
tar xvzf 'Sn3rpOs Login.tar.gz'
rm 'Sn3rpOs Login.tar.gz'
echo -e "$COL_WHITE Now Run MDMSetup And Change The Theme To Sn3rpOs $COL_RESET"
dpkg-reconfigure mdm
echo -e "$COL_RED DONE $COL_RESET"
sleep 4

echo -e "$COL_YELLOW Installing DarkMint Theme... $COL_RESET"
sleep 4
cd /usr/share/themes
wget https://raw.githubusercontent.com/r00tabega/Sn3rpOs_AutoInstall/master/darkmint-2.0.0.tar.gz
tar xvzf darkmint-2.0.0.tar.gz
rm darkmint-2.0.0.tar.gz
echo -e "$COL_RED DONE $COL_RESET"
sleep 4

echo -e "$COL_WHITE Install Theme Through The Menu $COL_RESET"
echo -e "$COL_RED DONE $COL_RESET"
sleep 4

# echo -e "$COL_YELLOW Installing kolomonggo-hacking2 Theme... $COL_RESET"
# sleep 4
# wget https://raw.githubusercontent.com/r00tabega/Sn3rpOs_AutoInstall/master/kolomonggo-hacking2.tar.gz
# tar xvzf kolomonggo-hacking2.tar.gz
# rm kolomonggo-hacking2.tar.gz
# echo -e "$COL_WHITE Change Theme Through The Menu $COL_RESET"
# echo DONE
# sleep 4

echo -e "$COL_YELLOW Installing Sn3rpOsh Scripts Folder... $COL_RESET"
echo -e "$COL_RED Please wait this will take awhile... $COL_RESET"
sleep 5
cd 

# cd /root
# mkdir Sn3rpOsh

# sudo apt update
# sudo apt install python3-pip cmake ruby python python-pip httrack whatweb python3 python3-pip libz-dev -y

# cd Sn3rpOsh

# git clone https://github.com/bahaabdelwahed/killshot
# cd killshot
# echo -e "$COL_RED Upgrading Ruby! $COL_RESET"
# sleep 4
# gem update
# ruby setup.rb
# cd /root/Sn3rpOsh
# git clone https://github.com/batuhaniskr/twitter-intelligence.git
# cd twitter-intelligence
# pip3 install -r requirements.txt
# cd /root/Sn3rpOsh
# git clone https://github.com/Souhardya/WarChild.git
# cd WarChild
# pip install -r requirement.txt
# cd /root/Sn3rpOsh
# git clone https://github.com/NullArray/AutoSploit.git

# pip install blessings
# pip3 install blessings
# pip install shodan
# pip3 install shodan

# git clone https://github.com/GitHackTools/BillCipher
# cd /root/Sn3rpOsh/BillCipher
# pip install -r requirements.txt
# pip3 install -r requirements.txt
# cd /root/Sn3rpOsh
# git clone https://github.com/thelinuxchoice/blackeye
# git clone https://github.com/m0rtem/CloudFail.git
# cd /root/Sn3rpOsh/CloudFail
# pip3 install -r requirements.txt
# cd /root/Sn3rpOsh
# git clone https://github.com/Tuhinshubhra/CMSeeK
# cd /root/Sn3rpOsh/CMSeeK
# pip install -r requirements.txt
# pip3 install -r requirements.txt 
# cd /root/Sn3rpOsh
# git clone https://github.com/D4Vinci/Cr3dOv3r.git
# cd /root/Sn3rpOsh/Cr3dOv3r
# chmod 777 -R Cr3dOv3r
# pip install -r requirements.txt
# pip3 install -r requirements.txt
# cd /root/Sn3rpOsh
# git clone https://gitlab.com/peterpt/eternal_check.git
# apt install winbind -y

# git clone https://github.com/SpiderLabs/social_mapper.git
# cd /root/Sn3rpOsh/social_mapper/setup
# pip install -r requirements.txt
# pip3 install -r requirements.txt
# cd /root/Sn3rpOsh/
# git clone https://github.com/1N3/Sn1per.git
# cd Sn1per
# chmod +x install.sh
# ./install.sh -y
# apt install python3-pip -y
# cd /root/Sn3rpOsh/
# git clone https://github.com/Tuhinshubhra/RED_HAWK
# git clone https://github.com/ahab94/xerxes-II.git
# cd /root/Sn3rpOsh/xerxes-II/
# gcc -o xerxes-II xerxes-II.c
# cd /root/Sn3rpOsh
# wget https://raw.githubusercontent.com/Manisso/fsociety/master/install.sh
# chmod +x install.sh
# ./install.sh
# git clone https://github.com/UndeadSec/EvilURL.git
# git clone https://github.com/SYWorks/waidps.git
# cd waidps
# pip install pycrypto
# wget https://raw.githubusercontent.com/r00tabega/Sn3rpOs_AutoInstall/master/pentmenu.tar.gz
# tar xvzf pentmenu.tar.gz
# rm pentmenu.tar.gz
# cd /root/Sn3rpOsh
# wget https://raw.githubusercontent.com/r00tabega/Sn3rpOs_AutoInstall/master/pyloris-3.2.tar.gz
# tar xvzf pyloris-3.2.tar.gz
# rm pyloris-3.2.tar.gz
# echo -e "$COL_RED DONE $COL_RESET"
# sleep 4

echo -e "$COL_YELLOW Installing Sn3rpOs Program Folder Please Wait... $COL_RESET"
cd /root
rm -rf PROGRAMS
wget https://raw.githubusercontent.com/r00tabega/Sn3rpOs_AutoInstall/master/PROGRAMS.tar.gz
tar xvzf PROGRAMS.tar.gz
rm PROGRAMS.tar.gz

apt install cowsay-off fortunes-off conky-all vlc -y
cd /usr/share/cowsay/cows
wget https://raw.githubusercontent.com/r00tabega/Sn3rpOs_AutoInstall/master/jail-bars.cow.tar.gz
tar xvzf jail-bars.cow.tar.gz
rm jail-bars.cow.tar.gz
sudo apt-get install p7zip-full -y

echo -e "$COL_CYAN Installing Icon Theme... $COL_RESET"
sleep 4
cd /usr/share/icons
wget https://orig00.deviantart.net/bf1a/f/2018/095/a/7/black_by_palko_drawing-dbzxxbs.7z
7z x black_by_palko_drawing-dbzxxbs.7z
rm black_by_palko_drawing-dbzxxbs.7z
echo -e "$COL_WHITE Change Icon Theme Through The Menu $COL_RESET"
echo -e "$COL_RED DONE $COL_RESET"
sleep 4

echo -e "$COL_CYAN Installing Custom Menu Icons... $COL_RESET"
sleep 4
cd /usr/share/icons
wget https://raw.githubusercontent.com/r00tabega/Sn3rpOs_AutoInstall/master/myicons.tar.gz
tar xvzf myicons.tar.gz
rm myicons.tar.gz
echo -e "$COL_RED DONE $COL_RESET"
sleep 4

echo -e "$COL_YELLOW Installing Conky... $COL_RESET"
sleep 3
apt install conky-all -y
cd /etc
wget https://raw.githubusercontent.com/r00tabega/Sn3rpOs_AutoInstall/master/conky.tar.gz
tar xvzf conky.tar.gz
rm conky.tar.gz
echo -e "$COL_CYAN Conky is now installed add it as a startup app in Preferences! $COL_RESET"
echo -e "$COL_RED DONE $COL_RESET"

killall conky
rm -rf /tmp/foo0
dtach -n /tmp/foo0 conky
sleep 4

echo -e "$COL_YELLOW Setting Up Custom Bash $COL_RESET"
sleep 3
cd /root
wget https://raw.githubusercontent.com/r00tabega/Sn3rpOs_AutoInstall/master/.bashrc.tar.gz
tar xvzf  .bashrc.tar.gz
rm .bashrc.tar.gz
echo -e "$COL_RED DONE $COL_RESET"
sleep 4

echo -e "$COL_YELLOW Installing Wine... $COL_RESET"
sleep 3
cd /root
dpkg --add-architecture  i386 ; apt update ; apt install wine32 -y
rm -rf /root/.wine
WINEPREFIX="/root/.wine32" WINEARCH=win32 wine wineboot
echo -e "$COL_RED DONE $COL_RESET"
sleep 4

echo -e "$COL_YELLOW Downloading Wallpaper and Terminal Images... $COL_RESET"
echo -e "$COL_CYAN Images will be stored in '/usr/share/images/desktop-base' $COL_RESET"
cd /usr/share/images
sleep 4 
wget https://raw.githubusercontent.com/r00tabega/Sn3rpOs_AutoInstall/master/images.tar.gz
tar xvzf images.tar.gz
rm images.tar.gz
echo -e "$COL_WHITE Change Wallpaper And Terminal Images Manually $COL_RESET"
sleep 4

echo -e "$COL_YELLOW Installing init functions into (/etc/init.d) $COL_RESET"
sleep 4
cd /etc/init.d
wget https://raw.githubusercontent.com/r00tabega/Sn3rpOs_AutoInstall/master/init.d.tar.gz
tar xvzf init.d.tar.gz
rm init.d.tar.gz
update-rc.d lsb-release defaults
update-rc.d macchanger defaults
update-rc.d fixVLC defaults
update-rc.d lightdm disable
update-rc.d mdm enable
update-rc.d mdm defaults
sleep 3


echo -e "$COL_YELLOW Installing Custom Tor Browser! $COL_RESET"
rm -rf /opt/Browser
temp="$(curl -s https://www.torproject.org/download/download-easy.html.en)"; temp2='https://www.torproject.org'`echo "${temp}" | grep -E -o '[A-Za-z0-9/_.-]+[.]tar.xz' | head -n 1 | sed 's/..//'`; wget -O tor-browser-linux64.tar.xz "$temp2"; tar xvfJ tor-browser-linux64.tar.xz; rm tor-browser-linux64.tar.xz; sudo mv tor-browser*/Browser/ /opt/; rm -rf tor-browser*; sed -i 's/id -u/echo 1/' /opt/Browser/start-tor-browser; chown -hR root /opt/Browser/
cd /opt/Browser/
./start-tor-browser --register-app
cd ~/.local/share/applications/
sed -i '/Exec/d' /opt/Browser/start-tor-browser.desktop
echo "Exec=firejail sh -c '"$(dirname "$*")"/Browser/start-tor-browser --detach || ([ ! -x "$(dirname "$*")"/Browser/start-tor-browser ] && "$(dirname "$*")"/start-tor-browser --detach) dummy %k" > /opt/Browser/start-tor-browser.desktop
echo -e "$COL_RED ALL FINISHED! $COL_RESET"

echo -e "$COL_WHITE Installing AWUS036ACH Drivers $COL_RESET"
sleep 4
cd /tmp
apt remove --purge realtek-rtl88xxau-dkms -y
apt install bc -y
apt autoremove -y
apt autoclean
git clone https://github.com/kimocoder/rtl8812au
cd rtl8812au
make 
make install
cd /tmp
rm -rf rtl8812au
echo -e "$COL_RED DONE! $COL_RESET"
echo -e "$COL_WHITE TinFoilSec $COL_RESET"
sleep 6

fi
exit