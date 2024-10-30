#!/bin/bash
echo Ustawianie backupów w domyślnych katalogach do normalnego pliku konfiguracyjnego

echo Kopiowanie netplan...
sudo cp /etc/netplan/00-installer-config.yaml.bak /etc/netplan/00-installer-config.yaml

echo Kopiowanie vsftpd...
sudo cp /etc/vsftpd.conf.bak /etc/vsftpd.conf

echo kopiowanie isc-dhcp-server[1]...
sudo cp /etc/dhcp/dhcpd.conf.bak /etc/dhcp/dhcpd.conf

echo kopiowanie isc-dhcp-server[2]...
sudo cp /etc/default/isc-dhcp-server.bak /etc/default/isc-dhcp-server

echo kopiowanie samba...
sudo cp /etc/samba/smb.conf.bak /etc/samba/smb.conf