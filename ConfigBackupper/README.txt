==ConfigBackupper==
===================
v1.2

Prosty program służący do importowania/exportowania plików konfiguracyjnych usług t.j.:
- netplan
- vsftpd
- isc-dhcp-server
- samba
- apache
- bind9 (w przyszłości)

Aby program działał należy:
- uruchomić 'cfgbackup' (komenda ./cfgbackup lub "sudo bash cfgbackup")
- upewnić się że pliki w katalogu shells mają uprawnienia do wykonywania (np. chmod 775)

Dalsze instrukcje pojawią się po uruchomieniu pliku cfgbackup.
Kod źródłowy napisany w C++ jest w katalogu 'src'.

Uwaga!
Plik binarny może nie działać na każdym systemie operacyjnym
(Testowany na Ubuntu 22.04 (Live OS), Arch Linux (VM))
Jeśli pojawiają się błędy, należy skompilować na nowo plik .cpp z katalogu 'src' (np. g++ cfgbackup.cpp -o cfgbackup, lub uruchomić 'build.sh')