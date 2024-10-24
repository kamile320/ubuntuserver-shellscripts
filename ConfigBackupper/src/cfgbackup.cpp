#include <iostream>
using namespace std;

int main(){
    int mode, check;
    int ver = 1.0; 
    cout << "====Backupper Configów===================" << endl;
    cout << "Program kopiuje/importuje kopie\nplików konfiguracyjnych danych usług:\n- netplan\n- vsftpd\n- isc-dhcp-server" << endl << endl;
    cout << "Program robi import/export tylko plików\nktóre konfigurujemy w zadaniach!!!" << endl;
    cout << "========================================" << endl << endl;

    cout << "Wybierz odpowiednią opcję:\n1 - zdumpowanie configów w tej samej lokalizacji co oryginał (z dopiskiem .bak)\n2 - zdumpowanie configów do katalogu 'bak_out'\n3 - import backupów na miejsce normalnych plików (wymagane pliki z końcówką .bat w domyślnych katalogach)\n4 - import configów do domyślnych katalogów (z bak_out)" << endl;
    cout << ">>>";
    cin >> mode;

    if(mode == 1){
        cout << "Uruchmianie 1.sh" << endl;
        system("./shells/1.sh");
        return 1;
    }else if(mode == 2){
        cout << "Uruchamianie 2.sh" << endl;
        system("./shells/2.sh");
        return 2;
    }else if(mode == 3){
        cout << "UWAGA! Korzystając z tej komendy możesz naruszyć sprawność domyślnych plików konfiguracyjnych usług\nJeśli usługi przestaną działać, możliwe że jest wymagane:\n- odinstalowanie usługi + apt purge [usługa] i zainstalowanie od nowa\n\nJeśli wiesz, co robisz, wpisz 3:";
        cin >> check;
        if(check == 3){
            cout << "Uruchamianie 3.sh" << endl;
            system("./shells/3.sh");
            return 3;
        }else{
            cout << "Anulowano" << endl;
            return 33;
        }
    }else if(mode == 4){
        cout << "UWAGA! Aby komenda zadziałała, należy:\n-utworzyć katalog bak_out w lokalizacji skryptu\n-w bak_out pliki muszą być TAK SAMO nazwane jak w domyślnych lokalizacjach + końcówki .bak\n\nJeśli te warunki nie zostaną spełnione, skrypt nie zadziała.\nJeśli wiesz, co robisz, wpisz 4:";
        cin >> check;
        if(check == 4){
            cout << "Uruchamianie 4.sh" << endl;
            system("./shells/4.sh");
            return 4;
        }else{
            cout << "Anulowano" << endl;
            return 44;
        }
    }else{
        cout << "Zła wartość" << endl;
        return 5;
    }
}