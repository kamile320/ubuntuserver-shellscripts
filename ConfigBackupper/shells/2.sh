#!/bin/bash
echo Duplikowanie configów do wyjściowego katalogu

echo Tworzenie 'bak_out'...
sudo mkdir bak_out

echo Kopiowanie netplan...
sudo cp /etc/netplan/00-installer-config.yaml bak_out/00-installer-config.yaml.bak

echo Kopiowanie vsftpd...
sudo cp /etc/vsftpd.conf bak_out/vsftpd.conf.bak

echo kopiowanie isc-dhcp-server[1]...
sudo cp /etc/dhcp/dhcpd.conf bak_out/dhcpd.conf.bak

echo kopiowanie isc-dhcp-server[2]...
sudo cp /etc/default/isc-dhcp-server bak_out/isc-dhcp-server.bak

echo kopiowanie samba...
sudo cp /etc/samba/smb.conf bak_out/smb.conf.bak