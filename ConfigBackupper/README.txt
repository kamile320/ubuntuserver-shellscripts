==ConfigBackupper==
===================
v1.0

Prosty program służący do importowania/exportowania plików konfiguracyjnych usług t.j.:
- netplan
- vsftpd
- isc-dhcp-server
- apache (w przyszłości)
- samba (w przyszłości)

Aby program działał należy:
- uruchomić 'cfgbackup' (komenda ./cfgbackup)
- upewnić się że pliki w katalogu shells mają uprawnienia wykonywania przez wszystkich (np. chmod 775)

Dalsze instrukcje pojawią się po uruchomieniu pliku cfgbackup.
Kod źródłowy napisany w języku C++ jest ukryty w katalogu '.src'.