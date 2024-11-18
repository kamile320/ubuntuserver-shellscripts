#!/bin/bash
echo Ustawianie backupów z bak_out do backupu w domyślnych katalogach

#netplan
echo Kopiowanie netplan...
sudo cp bak_out/00-installer-config.yaml.bak /etc/netplan/00-installer-config.yaml.bak

#vsftpd
echo Kopiowanie vsftpd...
sudo cp bak_out/vsftpd.conf.bak /etc/vsftpd.conf.bak

#isc-dhcp-server
echo Kopiowanie isc-dhcp-server[dhcpd.conf]...
sudo cp bak_out/dhcpd.conf.bak /etc/dhcp/dhcpd.conf.bak

echo Kopiowanie isc-dhcp-server[isc-dhcp-server]...
sudo cp bak_out/isc-dhcp-server.bak /etc/default/isc-dhcp-server.bak

#samba
echo Kopiowanie samba...
sudo cp bak_out/smb.conf.bak /etc/samba/smb.conf.bak

#apache2
echo Kopiowanie apache2[ports.conf]...
sudo cp bak_out/ports.conf.bak /etc/apache2/ports.conf.bak

echo Kopiowanie apache2[000-default.conf]...
sudo cp bak_out/000-default.conf.bak /etc/apache2/sites-available/000-default.conf.bak

echo Kopiowanie apache2[apache2.conf]...
sudo cp bak_out/apache2.conf.bak /etc/apache2/apache2.conf.bak

echo Kopiowanie apache2[dir.conf]...
sudo cp bak_out/dir.conf.bak /etc/apache2/mods-available/dir.conf.bak