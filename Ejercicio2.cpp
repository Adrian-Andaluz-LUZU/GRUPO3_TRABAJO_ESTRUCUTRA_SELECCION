#include <iostream>
using namespace std;

int main() {
    int numero, opcion;

    do {
        cout << "Ingrese un numero entre 1 y 12: ";
        cin >> numero;

        if (numero < 1 || numero > 12)
            cout << "Numero invalido. Intente nuevamente.\n";
    } while (numero < 1 || numero > 12);

    do {
        cout << "\n--- MENU ---\n";
        cout << "1. Tabla ascendente\n";
        cout << "2. Tabla descendente\n";
        cout << "3. Salir\n";
        cout << "Seleccione una opcion: ";
        cin >> opcion;

        switch (opcion) {
            case 1:
                for (int i = 1; i <= 12; i++)
                    cout << numero << " x " << i << " = " << numero*i << endl;
                break;
            case 2:
                for (int i = 12; i >= 1; i--)
                    cout << numero << " x " << i << " = " << numero*i << endl;
                break;
            case 3:
                cout << "Programa finalizado.\n";
                break;
            default:
                cout << "Opcion invalida.\n";
        }
    } while (opcion != 3);

    return 0;
}
