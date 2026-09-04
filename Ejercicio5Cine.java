import java.util.Scanner;

public class Ejercicio5Cine {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int opcion, edad;
        double precio = 0, total = 0, precioFinal;

        do {
            System.out.println("\n1. 2D ($5.00)");
            System.out.println("2. 3D ($7.50)");
            System.out.println("3. IMAX ($10.00)");
            System.out.println("4. Finalizar compra");
            System.out.print("Opción: ");
            opcion = sc.nextInt();

            switch (opcion) {
                case 1: precio = 5.00; break;
                case 2: precio = 7.50; break;
                case 3: precio = 10.00; break;
                case 4: continue;
                default:
                    System.out.println("Opción inválida.");
                    continue;
            }

            System.out.print("Edad: ");
            edad = sc.nextInt();

            if (edad < 0 || edad > 120) {
                System.out.println("Edad inválida.");
            } else {
                if (edad < 12)
                    precioFinal = precio * 0.70;
                else if (edad >= 65)
                    precioFinal = precio * 0.75;
                else
                    precioFinal = precio;

                total += precioFinal;
                System.out.printf("Precio de la entrada: $%.2f%n", precioFinal);
            }
        } while (opcion != 4);

        System.out.printf("Total final: $%.2f%n", total);
        sc.close();
    }
}
