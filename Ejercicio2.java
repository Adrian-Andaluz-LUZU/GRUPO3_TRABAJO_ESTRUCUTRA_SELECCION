import java.util.Scanner;

public class Ejercicio2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int numero;
        int opcion;

        do {
            System.out.print("Ingrese un numero entre 1 y 12: ");
            numero = sc.nextInt();

            if (numero < 1 || numero > 12) {
                System.out.println("Numero invalido. Intente nuevamente.");
            }
        } while (numero < 1 || numero > 12);

        do {
            System.out.println("\n--- MENU ---");
            System.out.println("1. Tabla ascendente");
            System.out.println("2. Tabla descendente");
            System.out.println("3. Salir");
            System.out.print("Seleccione una opcion: ");
            opcion = sc.nextInt();

            switch (opcion) {
                case 1:
                    for (int i = 1; i <= 12; i++)
                        System.out.println(numero + " x " + i + " = " + (numero * i));
                    break;
                case 2:
                    for (int i = 12; i >= 1; i--)
                        System.out.println(numero + " x " + i + " = " + (numero * i));
                    break;
                case 3:
                    System.out.println("Programa finalizado.");
                    break;
                default:
                    System.out.println("Opcion invalida.");
            }
        } while (opcion != 3);

        sc.close();
    }
}
