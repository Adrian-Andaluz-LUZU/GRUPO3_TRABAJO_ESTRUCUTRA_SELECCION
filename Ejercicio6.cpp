#include <iostream>
using namespace std;

int main() {
    double temp, suma = 0, mayor = 0, menor = 0;
    int cantidad = 0, frio = 0, templado = 0, calido = 0, muyCalido = 0;

    cout << "Temperatura (999 para terminar): ";
    cin >> temp;

    while (temp != 999) {
        if (temp < -50 || temp > 60) {
            cout << "Temperatura invalida." << endl;
        } else {
            suma += temp;
            cantidad++;

            if (cantidad == 1) mayor = menor = temp;
            else {
                if (temp > mayor) mayor = temp;
                if (temp < menor) menor = temp;
            }

            if (temp < 10) frio++;
            else if (temp <= 24) templado++;
            else if (temp <= 34) calido++;
            else muyCalido++;
        }

        cout << "Temperatura (999 para terminar): ";
        cin >> temp;
    }

    if (cantidad > 0) {
        cout << "Cantidad: " << cantidad << endl;
        cout << "Mayor: " << mayor << endl;
        cout << "Menor: " << menor << endl;
        cout << "Promedio: " << suma / cantidad << endl;
        cout << "Frio: " << frio << endl;
        cout << "Templado: " << templado << endl;
        cout << "Calido: " << calido << endl;
        cout << "Muy calido: " << muyCalido << endl;
    } else cout << "No se registraron datos validos." << endl;

    return 0;
}
