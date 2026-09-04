#include <iostream>
#include <iomanip>
using namespace std;

int main() {
    double recaudacion = 0, tarifaHora, base;
    int opcion, vehiculo, rol, horas, perdido;

    do {
        cout << "\n1. Calcular tarifa\n2. Ver tarifas\n3. Mostrar recaudacion\n4. Salir\n";
        cout << "Opcion: ";
        cin >> opcion;

        switch (opcion) {
            case 1:
                cout << "Vehiculo (1=Moto, 2=Auto, 3=Camioneta): ";
                cin >> vehiculo;
                cout << "Rol (1=Estudiante, 2=Docente, 3=General): ";
                cin >> rol;
                cout << "Horas (1-24): ";
                cin >> horas;
                cout << "Boleto perdido (1=Si, 0=No): ";
                cin >> perdido;

                if (horas < 1 || horas > 24) {
                    cout << "Cantidad de horas invalida." << endl;
                    break;
                }

                switch (vehiculo) {
                    case 1: tarifaHora = 0.50; break;
                    case 2: tarifaHora = 1.00; break;
                    case 3: tarifaHora = 1.50; break;
                    default: cout << "Vehiculo invalido." << endl; continue;
                }

                base = tarifaHora * horas;
                if (rol == 1) base *= 0.80;
                else if (rol == 2) base *= 0.90;
                else if (rol != 3) {
                    cout << "Rol invalido." << endl;
                    continue;
                }

                if (perdido == 1) base += 5;
                else if (perdido != 0) {
                    cout << "Opcion de boleto invalida." << endl;
                    continue;
                }

                recaudacion += base;
                cout << fixed << setprecision(2) << "Tarifa a pagar: $" << base << endl;
                break;

            case 2:
                cout << "Moto: $0.50/h | Auto: $1.00/h | Camioneta: $1.50/h" << endl;
                break;
            case 3:
                cout << fixed << setprecision(2) << "Recaudacion: $" << recaudacion << endl;
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
