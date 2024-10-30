#!/bin/bash
#PacakageInstaller v1.1

#Update Repo
sudo apt update -y
#Pakiety
sudo apt install mc lynx net-tools traceroute nmap hwinfo atop duplicity libpam-pwquality cifs-utils smartmontools nano file
#Dodatkowe
sudo apt install git bashtop xsysinfo neofetch 
#Serwery
sudo apt install apache2 samba vsftpd isc-dhcp-server
#Upgrade
sudo apt upgrade
#Apache
sudo a2enmod userdir
#Reboot
sudo reboot now

#INFO
#wymagany pakiet nieuwzględniony to: sysinfo
#nie można znaleźć go w repozytoriach Ubuntu 22.04
#zamienniki:
#polecenie 'xsysinfo' z pakietu deb xsysinfo (1.7-10)
#polecenie 'rsysinfo' z pakietu deb rstat-client (4.0.1-11)
#Opcjonalnie - "zahashtaguj" sudo reboot now i odhashtaguj:

#git clone https://github.com/GuillaumeGomez/sysinfo.git
