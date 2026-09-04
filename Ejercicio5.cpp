#include <iostream>
#include <iomanip>
using namespace std;

int main() {
    int opcion, edad;
    double precio = 0, total = 0, precioFinal;

    do {
        cout << "\n1. 2D ($5.00)\n2. 3D ($7.50)\n3. IMAX ($10.00)\n4. Finalizar compra\n";
        cout << "Opcion: ";
        cin >> opcion;

        switch (opcion) {
            case 1: precio = 5.00; break;
            case 2: precio = 7.50; break;
            case 3: precio = 10.00; break;
            case 4: continue;
            default:
                cout << "Opcion invalida." << endl;
                continue;
        }

        cout << "Edad: ";
        cin >> edad;

        if (edad < 0 || edad > 120) {
            cout << "Edad invalida." << endl;
        } else {
            if (edad < 12)
                precioFinal = precio * 0.70;
            else if (edad >= 65)
                precioFinal = precio * 0.75;
            else
                precioFinal = precio;

            total += precioFinal;
            cout << fixed << setprecision(2)
                 << "Precio de la entrada: $" << precioFinal << endl;
        }
    } while (opcion != 4);

    cout << fixed << setprecision(2) << "Total final: $" << total << endl;
    return 0;
}
