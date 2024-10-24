#!/bin/bash
echo Duplikowanie configów do domyślnych katalogów

echo Kopiowanie netplan...
sudo cp /etc/netplan/00-installer-config.yaml /etc/netplan/00-installer-config.yaml.bak

echo Kopiowanie vsftpd...
sudo cp /etc/vsftpd.conf /etc/vsftpd.conf.bak

echo kopiowanie isc-dhcp-server[1]...
sudo cp /etc/dhcp/dhcpd.conf /etc/dhcp/dhcpd.conf.bak

echo kopiowanie isc-dhcp-server[2]...
sudo cp /etc/default/isc-dhcp-server /etc/default/isc-dhcp-server.bak