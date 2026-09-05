#include <iostream>
#include <string>
#include <algorithm>
#include <cctype>

using namespace std;

// Función auxiliar para comparar cadenas ignorando mayúsculas y minúsculas (igual queequalsIgnoreCase en Java)
bool compararSinMayusculas(const string& a, const string& b) {
    if (a.length() != b.length()) return false;
    for (size_t i = 0; i < a.length(); i++) {
        if (tolower(a[i]) != tolower(b[i])) return false;
    }
    return true;
}

int main() {
    string nombres[100];
    double nota1[100];
    double nota2[100];
    double nota3[100];
    double asistencia[100];
    double promedio[100];
    string clasificacion[100];

    int cantidad = 0;
    int opcion;

    do {
        cout << "\n==============================" << endl;
        cout << " SISTEMA ACADEMICO INTEGRADO" << endl;
        cout << "==============================" << endl;
        cout << "1. Registrar estudiante" << endl;
        cout << "2. Mostrar resultados" << endl;
        cout << "3. Buscar estudiante" << endl;
        cout << "4. Salir" << endl;
        cout << "Seleccione una opcion: ";

        cin >> opcion;
        cin.ignore(); // Limpiar el salto de línea pendiente en el buffer

        switch (opcion) {

            case 1:
                cout << "\n--- REGISTRO DE ESTUDIANTE ---" << endl;

                cout << "Ingrese el nombre: ";
                getline(cin, nombres[cantidad]);

                do {
                    cout << "Ingrese nota 1 (0-10): ";
                    cin >> nota1[cantidad];

                    if (nota1[cantidad] < 0 || nota1[cantidad] > 10) {
                        cout << "ERROR: Calificacion fuera de rango" << endl;
                    }
                } while (nota1[cantidad] < 0 || nota1[cantidad] > 10);

                do {
                    cout << "Ingrese nota 2 (0-10): ";
                    cin >> nota2[cantidad];

                    if (nota2[cantidad] < 0 || nota2[cantidad] > 10) {
                        cout << "ERROR: Calificacion fuera de rango" << endl;
                    }
                } while (nota2[cantidad] < 0 || nota2[cantidad] > 10);

                do {
                    cout << "Ingrese nota 3 (0-10): ";
                    cin >> nota3[cantidad];

                    if (nota3[cantidad] < 0 || nota3[cantidad] > 10) {
                        cout << "ERROR: Calificacion fuera de rango" << endl;
                    }
                } while (nota3[cantidad] < 0 || nota3[cantidad] > 10);

                do {
                    cout << "Ingrese asistencia (0-100): ";
                    cin >> asistencia[cantidad];

                    if (asistencia[cantidad] < 0 || asistencia[cantidad] > 100) {
                        cout << "ERROR: Asistencia fuera de rango" << endl;
                    }
                } while (asistencia[cantidad] < 0 || asistencia[cantidad] > 100);

                cin.ignore(); // Limpiar el buffer antes del próximo getline

                promedio[cantidad] = (nota1[cantidad] + nota2[cantidad] + nota3[cantidad]) / 3.0;

                if (promedio[cantidad] >= 9 && asistencia[cantidad] >= 90) {
                    clasificacion[cantidad] = "Excelente";
                } else if (promedio[cantidad] >= 7 && asistencia[cantidad] >= 70) {
                    clasificacion[cantidad] = "Aprobado";
                } else if (promedio[cantidad] >= 5 && asistencia[cantidad] >= 70) {
                    clasificacion[cantidad] = "Recuperacion";
                } else {
                    clasificacion[cantidad] = "Reprobado";
                }

                cantidad++;
                cout << "Estudiante registrado correctamente." << endl;
                break;

            case 2:
                cout << "\n--- RESULTADOS ---" << endl;

                if (cantidad == 0) {
                    cout << "No existen estudiantes registrados." << endl;
                } else {
                    for (int i = 0; i < cantidad; i++) {
                        cout << "\n--------------------------" << endl;
                        cout << "Nombre: " << nombres[i] << endl;
                        cout << "Nota 1: " << nota1[i] << endl;
                        cout << "Nota 2: " << nota2[i] << endl;
                        cout << "Nota 3: " << nota3[i] << endl;
                        cout << "Asistencia: " << asistencia[i] << "%" << endl;
                        cout << "Promedio: " << promedio[i] << endl;
                        cout << "Clasificacion: " << clasificacion[i] << endl;
                    }
                }
                break;

            case 3:
                cout << "\n--- BUSCAR ESTUDIANTE ---" << endl;

                if (cantidad == 0) {
                    cout << "No existen estudiantes registrados." << endl;
                } else {
                    cout << "Ingrese el nombre a buscar: ";
                    string buscado;
                    getline(cin, buscado);

                    int i = 0;
                    bool encontrado = false;

                    while (i < cantidad && !encontrado) {
                        if (compararSinMayusculas(nombres[i], buscado)) {
                            encontrado = true;
                        } else {
                            i++;
                        }
                    }

                    if (encontrado) {
                        cout << "\nEstudiante encontrado" << endl;
                        cout << "Nombre: " << nombres[i] << endl;
                        cout << "Nota 1: " << nota1[i] << endl;
                        cout << "Nota 2: " << nota2[i] << endl;
                        cout << "Nota 3: " << nota3[i] << endl;
                        cout << "Asistencia: " << asistencia[i] << "%" << endl;
                        cout << "Promedio: " << promedio[i] << endl;
                        cout << "Clasificacion: " << clasificacion[i] << endl;
                    } else {
                        cout << "Estudiante no encontrado." << endl;
                    }
                }
                break;

            case 4:
                cout << "Saliendo del sistema..." << endl;
                break;

            default:
                cout << "ERROR: Opcion invalida." << endl;
        }

    } while (opcion != 4);

    return 0;
}