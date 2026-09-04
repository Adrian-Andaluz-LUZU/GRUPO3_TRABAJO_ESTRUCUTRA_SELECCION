import java.util.Scanner;

public class Ejercicio3Cajero {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        double saldo = 500.0, monto;
        int opcion;

        do {
            System.out.println("\n1. Consultar saldo");
            System.out.println("2. Depositar");
            System.out.println("3. Retirar");
            System.out.println("4. Salir");
            System.out.print("Opción: ");
            opcion = sc.nextInt();

            switch (opcion) {
                case 1:
                    System.out.printf("Saldo: $%.2f%n", saldo);
                    break;
                case 2:
                    System.out.print("Monto a depositar: ");
                    monto = sc.nextDouble();
                    if (monto > 0) {
                        saldo += monto;
                        System.out.printf("Saldo actualizado: $%.2f%n", saldo);
                    } else {
                        System.out.println("Depósito inválido.");
                    }
                    break;
                case 3:
                    System.out.print("Monto a retirar: ");
                    monto = sc.nextDouble();
                    if (monto > 0 && monto <= 500 && monto <= saldo) {
                        saldo -= monto;
                        System.out.printf("Saldo actualizado: $%.2f%n", saldo);
                    } else {
                        System.out.printf("Retiro inválido. Saldo: $%.2f%n", saldo);
                    }
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
