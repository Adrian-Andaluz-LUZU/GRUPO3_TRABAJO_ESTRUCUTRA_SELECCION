import java.util.Scanner;

public class Ejercicio6Temperaturas {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        double temp, suma = 0, mayor = 0, menor = 0;
        int cantidad = 0, frio = 0, templado = 0, calido = 0, muyCalido = 0;

        System.out.print("Temperatura (999 para terminar): ");
        temp = sc.nextDouble();

        while (temp != 999) {
            if (temp < -50 || temp > 60) {
                System.out.println("Temperatura inválida.");
            } else {
                suma += temp;
                cantidad++;

                if (cantidad == 1) {
                    mayor = menor = temp;
                } else {
                    if (temp > mayor) mayor = temp;
                    if (temp < menor) menor = temp;
                }

                if (temp < 10) frio++;
                else if (temp <= 24) templado++;
                else if (temp <= 34) calido++;
                else muyCalido++;
            }

            System.out.print("Temperatura (999 para terminar): ");
            temp = sc.nextDouble();
        }

        if (cantidad > 0) {
            System.out.println("Cantidad: " + cantidad);
            System.out.println("Mayor: " + mayor);
            System.out.println("Menor: " + menor);
            System.out.println("Promedio: " + (suma / cantidad));
            System.out.println("Frío: " + frio);
            System.out.println("Templado: " + templado);
            System.out.println("Cálido: " + calido);
            System.out.println("Muy cálido: " + muyCalido);
        } else {
            System.out.println("No se registraron datos válidos.");
        }
        sc.close();
    }
}
