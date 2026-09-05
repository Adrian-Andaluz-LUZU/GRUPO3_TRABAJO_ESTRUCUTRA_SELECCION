import java.util.Scanner;

public class Ejercicio9Cafeteria {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        double subtotal = 0, precio, descuento, total;
        int opcion, cantidad;

        do {
            System.out.println("\n1. Café $1.50");
            System.out.println("2. Sándwich $2.50");
            System.out.println("3. Jugo $1.75");
            System.out.println("4. Ensalada $3.00");
            System.out.println("5. Finalizar");
            System.out.print("Opción: ");
            opcion = sc.nextInt();

            switch (opcion) {
                case 1: precio = 1.50; break;
                case 2: precio = 2.50; break;
                case 3: precio = 1.75; break;
                case 4: precio = 3.00; break;
                case 5: continue;
                default:
                    System.out.println("Opción inválida.");
                    continue;
            }

            System.out.print("Cantidad: ");
            cantidad = sc.nextInt();

            if (cantidad > 0)
                subtotal += precio * cantidad;
            else
                System.out.println("Cantidad inválida.");
        } while (opcion != 5);

        if (subtotal < 10) descuento = 0;
        else if (subtotal < 20) descuento = 0.05;
        else if (subtotal < 50) descuento = 0.10;
        else descuento = 0.15;

        total = subtotal * (1 - descuento);
        System.out.printf("Subtotal: $%.2f%n", subtotal);
        System.out.printf("Descuento: %.0f%%%n", descuento * 100);
        System.out.printf("Total: $%.2f%n", total);

        sc.close();
    }
}
