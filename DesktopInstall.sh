#!/bin/bash
#DesktopInstall v1.1
echo "Instalator Pakietów v1.1 (Ubuntu Desktop)"
echo "Skrypt pobierze przydatne pakiety i programy dla Ubuntu Desktop"
sleep 3
read -p "Type anything to continue (need root privileges)"

#Update Repo
sudo apt update -y
#Install
sudo apt install neofetch git mc nano lynx net-tools network-manager traceroute nmap hwinfo atop lshw lshw-gtk tree g++ gparted inkscape gimp

#Bashtop
#atop, btop i bashtop to podobne programy (Szczególnie btop i bashtop)
#Służą do monitorowania procesów itp.
#Jeśli chcesz pobrać jeden z poniższych programów, odhashtaguj je:
#sudo apt install -y btop
#sudo apt install -y bashtop

#Upgrade
echo "Starting system upgrade..."
sleep 2
sudo apt upgrade -y
sleep 1
echo "Running apt autoremove..."
sleep 2
sudo apt autoremove -y
sleep 1

#Flatpak
echo "Czy chcesz pobrać flatpak i przydatne programy?"
echo "Aktualnie flatpak działa tylko na systemach gdzie"
echo "jest już skonfigurowany automatycznie lub ręcznie."
echo "Następujące pakiety/programy zostaną zainstalowane:"
echo "(APT) flatpak"
echo "(Flatpak) VisualStudioCode, GithubDesktop, Discord"
read -p "Type anything to continue (Ctrl-C to cancel)"

#Flatpak-Install
sudo apt install flatpak
sudo flatpak install com.visualstudio.code
sudo flatpak install io.github.shiftey.Desktop
sudo flatpak install com.discordapp.Discord

#Reboot
read -p "Zrestartować komputer? (Ctrl-C to cancel)"
sudo reboot now