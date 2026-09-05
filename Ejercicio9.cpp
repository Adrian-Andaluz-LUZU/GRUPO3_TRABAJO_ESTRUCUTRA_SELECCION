#include <iostream>
#include <iomanip>
using namespace std;

int main() {
    double subtotal = 0, precio, descuento, total;
    int opcion, cantidad;

    do {
        cout << "\n1. Cafe $1.50\n2. Sandwich $2.50\n3. Jugo $1.75\n4. Ensalada $3.00\n5. Finalizar\n";
        cout << "Opcion: ";
        cin >> opcion;

        switch (opcion) {
            case 1: precio = 1.50; break;
            case 2: precio = 2.50; break;
            case 3: precio = 1.75; break;
            case 4: precio = 3.00; break;
            case 5: continue;
            default: cout << "Opcion invalida." << endl; continue;
        }

        cout << "Cantidad: ";
        cin >> cantidad;

        if (cantidad > 0) subtotal += precio * cantidad;
        else cout << "Cantidad invalida." << endl;
    } while (opcion != 5);

    if (subtotal < 10) descuento = 0;
    else if (subtotal < 20) descuento = 0.05;
    else if (subtotal < 50) descuento = 0.10;
    else descuento = 0.15;

    total = subtotal * (1 - descuento);
    cout << fixed << setprecision(2);
    cout << "Subtotal: $" << subtotal << endl;
    cout << "Descuento: " << descuento * 100 << "%" << endl;
    cout << "Total: $" << total << endl;

    return 0;
}
