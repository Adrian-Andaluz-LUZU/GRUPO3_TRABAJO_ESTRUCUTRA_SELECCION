import java.util.Scanner;

public class Ejercicio10SistemaIntegrado {

    public static void main(String[] args) {

        Scanner entrada = new Scanner(System.in);

        String[] nombres = new String[100];
        double[] nota1 = new double[100];
        double[] nota2 = new double[100];
        double[] nota3 = new double[100];
        double[] asistencia = new double[100];
        double[] promedio = new double[100];
        String[] clasificacion = new String[100];

        int cantidad = 0;
        int opcion;

        do {
            System.out.println("\n==============================");
            System.out.println(" SISTEMA ACADEMICO INTEGRADO");
            System.out.println("==============================");
            System.out.println("1. Registrar estudiante");
            System.out.println("2. Mostrar resultados");
            System.out.println("3. Buscar estudiante");
            System.out.println("4. Salir");
            System.out.print("Seleccione una opcion: ");

            opcion = entrada.nextInt();
            entrada.nextLine();

            switch (opcion) {

                case 1:
                    System.out.println("\n--- REGISTRO DE ESTUDIANTE ---");

                    System.out.print("Ingrese el nombre: ");
                    nombres[cantidad] = entrada.nextLine();

                    do {
                        System.out.print("Ingrese nota 1 (0-10): ");
                        nota1[cantidad] = entrada.nextDouble();

                        if (nota1[cantidad] < 0 || nota1[cantidad] > 10) {
                            System.out.println("ERROR: Calificacion fuera de rango");
                        }
                    } while (nota1[cantidad] < 0 || nota1[cantidad] > 10);

                    do {
                        System.out.print("Ingrese nota 2 (0-10): ");
                        nota2[cantidad] = entrada.nextDouble();

                        if (nota2[cantidad] < 0 || nota2[cantidad] > 10) {
                            System.out.println("ERROR: Calificacion fuera de rango");
                        }
                    } while (nota2[cantidad] < 0 || nota2[cantidad] > 10);

                    do {
                        System.out.print("Ingrese nota 3 (0-10): ");
                        nota3[cantidad] = entrada.nextDouble();

                        if (nota3[cantidad] < 0 || nota3[cantidad] > 10) {
                            System.out.println("ERROR: Calificacion fuera de rango");
                        }
                    } while (nota3[cantidad] < 0 || nota3[cantidad] > 10);

                    do {
                        System.out.print("Ingrese asistencia (0-100): ");
                        asistencia[cantidad] = entrada.nextDouble();

                        if (asistencia[cantidad] < 0 || asistencia[cantidad] > 100) {
                            System.out.println("ERROR: Asistencia fuera de rango");
                        }
                    } while (asistencia[cantidad] < 0 || asistencia[cantidad] > 100);

                    entrada.nextLine();

                    promedio[cantidad] =
                            (nota1[cantidad] + nota2[cantidad] + nota3[cantidad]) / 3;

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
                    System.out.println("Estudiante registrado correctamente.");
                    break;

                case 2:
                    System.out.println("\n--- RESULTADOS ---");

                    if (cantidad == 0) {
                        System.out.println("No existen estudiantes registrados.");
                    } else {
                        for (int i = 0; i < cantidad; i++) {
                            System.out.println("\n--------------------------");
                            System.out.println("Nombre: " + nombres[i]);
                            System.out.println("Nota 1: " + nota1[i]);
                            System.out.println("Nota 2: " + nota2[i]);
                            System.out.println("Nota 3: " + nota3[i]);
                            System.out.println("Asistencia: " + asistencia[i] + "%");
                            System.out.println("Promedio: " + promedio[i]);
                            System.out.println("Clasificacion: " + clasificacion[i]);
                        }
                    }
                    break;

                case 3:
                    System.out.println("\n--- BUSCAR ESTUDIANTE ---");

                    if (cantidad == 0) {
                        System.out.println("No existen estudiantes registrados.");
                    } else {
                        System.out.print("Ingrese el nombre a buscar: ");
                        String buscado = entrada.nextLine();

                        int i = 0;
                        boolean encontrado = false;

                        while (i < cantidad && !encontrado) {
                            if (nombres[i].equalsIgnoreCase(buscado)) {
                                encontrado = true;
                            } else {
                                i++;
                            }
                        }

                        if (encontrado) {
                            System.out.println("\nEstudiante encontrado");
                            System.out.println("Nombre: " + nombres[i]);
                            System.out.println("Nota 1: " + nota1[i]);
                            System.out.println("Nota 2: " + nota2[i]);
                            System.out.println("Nota 3: " + nota3[i]);
                            System.out.println("Asistencia: " + asistencia[i] + "%");
                            System.out.println("Promedio: " + promedio[i]);
                            System.out.println("Clasificacion: " + clasificacion[i]);
                        } else {
                            System.out.println("Estudiante no encontrado.");
                        }
                    }
                    break;

                case 4:
                    System.out.println("Saliendo del sistema...");
                    break;

                default:
                    System.out.println("ERROR: Opcion invalida.");
            }

        } while (opcion != 4);

        entrada.close();
    }
}
