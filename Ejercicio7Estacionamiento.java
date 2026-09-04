import java.util.Scanner;

public class Ejercicio7Estacionamiento {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        double recaudacion = 0, tarifaHora, base;
        int opcion, vehiculo, rol, horas, perdido;

        do {
            System.out.println("\n1. Calcular tarifa");
            System.out.println("2. Ver tarifas");
            System.out.println("3. Mostrar recaudación");
            System.out.println("4. Salir");
            System.out.print("Opción: ");
            opcion = sc.nextInt();

            switch (opcion) {
                case 1:
                    System.out.print("Vehículo (1=Moto, 2=Auto, 3=Camioneta): ");
                    vehiculo = sc.nextInt();
                    System.out.print("Rol (1=Estudiante, 2=Docente, 3=General): ");
                    rol = sc.nextInt();
                    System.out.print("Horas (1-24): ");
                    horas = sc.nextInt();
                    System.out.print("¿Boleto perdido? (1=Sí, 0=No): ");
                    perdido = sc.nextInt();

                    if (horas < 1 || horas > 24) {
                        System.out.println("Cantidad de horas inválida.");
                        break;
                    }

                    switch (vehiculo) {
                        case 1: tarifaHora = 0.50; break;
                        case 2: tarifaHora = 1.00; break;
                        case 3: tarifaHora = 1.50; break;
                        default:
                            System.out.println("Vehículo inválido.");
                            continue;
                    }

                    base = tarifaHora * horas;
                    if (rol == 1) base *= 0.80;
                    else if (rol == 2) base *= 0.90;
                    else if (rol != 3) {
                        System.out.println("Rol inválido.");
                        continue;
                    }

                    if (perdido == 1) base += 5;
                    else if (perdido != 0) {
                        System.out.println("Opción de boleto inválida.");
                        continue;
                    }

                    recaudacion += base;
                    System.out.printf("Tarifa a pagar: $%.2f%n", base);
                    break;

                case 2:
                    System.out.println("Moto: $0.50/h | Auto: $1.00/h | Camioneta: $1.50/h");
                    break;
                case 3:
                    System.out.printf("Recaudación: $%.2f%n", recaudacion);
                    break;
                case 4:
                    System.out.println("Programa finalizado.");
                    break;
                default:
                    System.out.println("Opción inválida.");
            }
        } while (opcion != 4);

        sc.close();
    }
}
