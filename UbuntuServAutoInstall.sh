#!/bin/bash
#PacakageInstaller v1.4
echo "Instalator Pakietów v1.4"
echo "Program pobierze wszystkie wymagane pakiety do zadań egzaminacyjnych INF.02 (Ubuntu Server)"
sleep 3
read -p "Type anything to continue (need root privileges)"


#Update Repo
sudo apt update -y
#Pakiety
sudo apt install -y mc lynx net-tools traceroute nmap hwinfo atop duplicity libpam-pwquality cifs-utils smartmontools nano file
#Dodatkowe
sudo apt install -y git xsysinfo neofetch hwinfo lshw lshw-gtk tree g++ network-manager
#Serwery
sudo apt install -y apache2 samba vsftpd isc-dhcp-server
#Serwery - DNS
sudo apt install -y bind9 bind9utils bind9-doc dnsutils
#Apache
sudo a2enmod userdir
sleep 2
#Dodatkowe2
echo "Próba pobrania pakietów które mogą nie występywać w każdym repozytorium"
sleep 2
sudo apt install -y bashtop
sudo apt install -y btop
sleep 2
#Upgrade
echo "Starting system upgrade..."
sleep 2
sudo apt upgrade -y
sleep 1
echo "Running apt autoremove..."
sleep 2
sudo apt autoremove -y
sleep 1

#Reboot
read -p "Zrestartować komputer? (Ctrl-C to cancel)"
sudo reboot now

#INFO
#wymagany pakiet nieuwzględniony to: sysinfo
#nie można znaleźć go w repozytoriach Ubuntu 22.04
#zamienniki:
#polecenie 'xsysinfo' z pakietu deb xsysinfo (1.7-10)
#polecenie 'rsysinfo' z pakietu deb rstat-client (4.0.1-11)
#Opcjonalnie - "zahashtaguj" sudo reboot now i odhashtaguj:

#git clone https://github.com/GuillaumeGomez/sysinfo.git
