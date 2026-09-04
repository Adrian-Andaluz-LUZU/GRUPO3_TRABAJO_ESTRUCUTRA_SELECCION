#include <iostream>
#include <string>
using namespace std;

int main() {
    const string CLAVE_CORRECTA = "Java2026";
    int intentos = 0;
    bool acceso = false;
    string clave;

    while (intentos < 3 && !acceso) {
        cout << "Ingrese la contrasena: ";
        getline(cin, clave);
        intentos++;

        if (clave == CLAVE_CORRECTA) {
            acceso = true;
            cout << "Acceso permitido." << endl;
        } else {
            int restantes = 3 - intentos;
            if (restantes > 0)
                cout << "Contrasena incorrecta. Intentos restantes: "
                     << restantes << endl;
        }
    }

    if (!acceso)
        cout << "Usuario bloqueado." << endl;

    return 0;
}
