#!/bin/bash
echo Duplikowanie configów do wyjściowego katalogu

#bak_out
echo Tworzenie 'bak_out'...
sudo mkdir bak_out

#netplan
echo Kopiowanie netplan...
sudo cp /etc/netplan/00-installer-config.yaml bak_out/00-installer-config.yaml.bak

#vsftpd
echo Kopiowanie vsftpd...
sudo cp /etc/vsftpd.conf bak_out/vsftpd.conf.bak

#isc-dhcp-server
echo Kopiowanie isc-dhcp-server[dhcpd.conf]...
sudo cp /etc/dhcp/dhcpd.conf bak_out/dhcpd.conf.bak

echo Kopiowanie isc-dhcp-server[isc-dhcp-server]...
sudo cp /etc/default/isc-dhcp-server bak_out/isc-dhcp-server.bak

#samba
echo Kopiowanie samba...
sudo cp /etc/samba/smb.conf bak_out/smb.conf.bak

#apache2
echo Kopiowanie apache2[ports.conf]...
sudo cp /etc/apache2/ports.conf bak_out/ports.conf.bak

echo Kopiowanie apache2[000-default.conf]...
sudo cp /etc/apache2/sites-available/000-default.conf bak_out/000-default.conf.bak

echo Kopiowanie apache2[apache2.conf]...
sudo cp /etc/apache2/apache2.conf bak_out/apache2.conf.bak

echo Kopiowanie apache2[dir.conf]...
sudo cp /etc/apache2/mods-available/dir.conf bak_out/dir.conf.bak