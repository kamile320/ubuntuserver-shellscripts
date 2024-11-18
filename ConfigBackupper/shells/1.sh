#!/bin/bash
echo Duplikowanie configów do domyślnych katalogów

#netplan
echo Kopiowanie netplan...
sudo cp /etc/netplan/00-installer-config.yaml /etc/netplan/00-installer-config.yaml.bak

#vsftpd
echo Kopiowanie vsftpd...
sudo cp /etc/vsftpd.conf /etc/vsftpd.conf.bak

#isc-dhcp-server
echo Kopiowanie isc-dhcp-server[dhcpd.conf]...
sudo cp /etc/dhcp/dhcpd.conf /etc/dhcp/dhcpd.conf.bak

echo Kopiowanie isc-dhcp-server[isc-dhcp-server]...
sudo cp /etc/default/isc-dhcp-server /etc/default/isc-dhcp-server.bak

#samba
echo Kopiowanie samba...
sudo cp /etc/samba/smb.conf /etc/samba/smb.conf.bak

#apache2
echo Kopiowanie apache2[ports.conf]...
sudo cp /etc/apache2/ports.conf /etc/apache2/ports.conf.bak

echo Kopiowanie apache2[000-default.conf]...
sudo cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/000-default.conf.bak

echo Kopiowanie apache2[apache2.conf]...
sudo cp /etc/apache2/apache2.conf /etc/apache2/apache2.conf.bak

echo Kopiowanie apache2[dir.conf]...
sudo cp /etc/apache2/mods-available/dir.conf /etc/apache2/mods-available/dir.conf.bak