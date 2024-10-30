==ConfigBackupper==
===================
v1.1

Prosty program służący do importowania/exportowania plików konfiguracyjnych usług t.j.:
- netplan
- vsftpd
- isc-dhcp-server
- samba
- apache (w przyszłości)


Aby program działał należy:
- uruchomić 'cfgbackup' (komenda ./cfgbackup)
- upewnić się że pliki w katalogu shells mają uprawnienia do wykonywania (np. chmod 775)

Dalsze instrukcje pojawią się po uruchomieniu pliku cfgbackup.
Kod źródłowy napisany w C++ jest w katalogu 'src'.

Uwaga!
Plik binarny może nie działać na każdym systemie operacyjnym
(Testowany na Ubuntu 22.04 (Live OS), Arch Linux (VM))
W takim wypadku należy skompilować plik .cpp z katalogu 'src'