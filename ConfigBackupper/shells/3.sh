#!/bin/bash
echo Ustawianie backupów w domyślnych katalogach do normalnego pliku konfiguracyjnego

#netplan
echo Kopiowanie netplan...
sudo cp /etc/netplan/00-installer-config.yaml.bak /etc/netplan/00-installer-config.yaml

#vsftpd
echo Kopiowanie vsftpd...
sudo cp /etc/vsftpd.conf.bak /etc/vsftpd.conf

#isc-dhcp-server
echo Kopiowanie isc-dhcp-server[dhcpd.conf]...
sudo cp /etc/dhcp/dhcpd.conf.bak /etc/dhcp/dhcpd.conf

echo Kopiowanie isc-dhcp-server[isc-dhcp-server]...
sudo cp /etc/default/isc-dhcp-server.bak /etc/default/isc-dhcp-server

#samba
echo Kopiowanie samba...
sudo cp /etc/samba/smb.conf.bak /etc/samba/smb.conf

#apache2
echo Kopiowanie apache2[ports.conf]...
sudo cp /etc/apache2/ports.conf.bak /etc/apache2/ports.conf

echo Kopiowanie apache2[000-default.conf]...
sudo cp /etc/apache2/sites-available/000-default.conf.bak /etc/apache2/sites-available/000-default.conf

echo Kopiowanie apache2[apache2.conf]...
sudo cp /etc/apache2/apache2.conf.bak /etc/apache2/apache2.conf

echo Kopiowanie apache2[dir.conf]...
sudo cp /etc/apache2/mods-available/dir.conf.bak /etc/apache2/mods-available/dir.conf