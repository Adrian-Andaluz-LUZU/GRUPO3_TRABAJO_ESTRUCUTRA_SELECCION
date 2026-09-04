#include <iostream>
#include <iomanip>
using namespace std;

int main() {
    double saldo = 500.0, monto;
    int opcion;

    do {
        cout << "\n1. Consultar saldo\n2. Depositar\n3. Retirar\n4. Salir\n";
        cout << "Opcion: ";
        cin >> opcion;

        switch (opcion) {
            case 1:
                cout << fixed << setprecision(2) << "Saldo: $" << saldo << endl;
                break;
            case 2:
                cout << "Monto a depositar: ";
                cin >> monto;
                if (monto > 0) {
                    saldo += monto;
                    cout << "Saldo actualizado: $" << saldo << endl;
                } else cout << "Deposito invalido." << endl;
                break;
            case 3:
                cout << "Monto a retirar: ";
                cin >> monto;
                if (monto > 0 && monto <= 500 && monto <= saldo) {
                    saldo -= monto;
                    cout << "Saldo actualizado: $" << saldo << endl;
                } else cout << "Retiro invalido. Saldo: $" << saldo << endl;
                break;
            case 4:
                cout << "Programa finalizado." << endl;
                break;
            default:
                cout << "Opcion invalida." << endl;
        }
    } while (opcion != 4);

    return 0;
}
