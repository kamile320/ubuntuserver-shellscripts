#!/bin/bash
echo Kompilowanie wymaga uprawnień roota.
sleep 2
read -p "Type anything to continue."
sudo apt install g++
sudo chmod 775 -R shells/*
g++ src/cfgbackup.cpp -o cfgbackup