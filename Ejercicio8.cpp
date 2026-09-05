#include <iostream>
using namespace std;

int main() {
    int n, num, suma = 0;
    int positivo = 0, negativo = 0, cero = 0;
    int par = 0, impar = 0, multiplos3 = 0;

    cout << "Cantidad de numeros: ";
    cin >> n;

    if (n < 0) {
        cout << "Cantidad invalida." << endl;
    } else {
        for (int i = 1; i <= n; i++) {
            cout << "Numero " << i << ": ";
            cin >> num;
            suma += num;

            if (num > 0) positivo++;
            else if (num < 0) negativo++;
            else cero++;

            if (num % 2 == 0) par++;
            else impar++;

            if (num % 3 == 0) multiplos3++;
        }

        cout << "Positivos: " << positivo << endl;
        cout << "Negativos: " << negativo << endl;
        cout << "Ceros: " << cero << endl;
        cout << "Pares: " << par << endl;
        cout << "Impares: " << impar << endl;
        cout << "Multiplos de 3: " << multiplos3 << endl;
        cout << "Suma: " << suma << endl;

        if (n > 0)
            cout << "Promedio: " << (double)suma / n << endl;
        else
            cout << "No hay datos; no se calcula promedio." << endl;
    }

    return 0;
}
