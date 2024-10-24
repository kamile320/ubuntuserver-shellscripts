#!/bin/bash
echo Ustawianie backupów z bak_out do backupu w domyślnych katalogach

echo Kopiowanie netplan...
sudo cp bak_out/00-installer-config.yaml.bak /etc/netplan/00-installer-config.yaml.bak

echo Kopiowanie vsftpd...
sudo cp bak_out/vsftpd.conf.bak /etc/vsftpd.conf.bak

echo kopiowanie isc-dhcp-server[1]...
sudo cp bak_out/dhcpd.conf.bak /etc/dhcp/dhcpd.conf.bak

echo kopiowanie isc-dhcp-server[2]...
sudo cp bak_out/isc-dhcp-server.bak /etc/default/isc-dhcp-server.bak