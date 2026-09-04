import java.util.Scanner;

public class Ejercicio1 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        double suma = 0;
        int aprobados = 0;
        int reprobados = 0;

        for (int i = 1; i <= 5; i++) {
            double nota;

            // Validar antes de procesar
            do {
                System.out.print("Ingrese la nota " + i + " (0-10): ");
                nota = sc.nextDouble();

                if (nota < 0 || nota > 10) {
                    System.out.println("Nota invalida. Intente nuevamente.");
                }
            } while (nota < 0 || nota > 10);

            if (nota >= 9) {
                System.out.println("Clasificacion: Excelente");
            } else if (nota >= 7) {
                System.out.println("Clasificacion: Aprobado");
            } else if (nota >= 5) {
                System.out.println("Clasificacion: Supletorio");
            } else {
                System.out.println("Clasificacion: Reprobado");
            }

            suma += nota;

            if (nota >= 7) {
                aprobados++;
            }
            if (nota < 5) {
                reprobados++;
            }
        }

        double promedio = suma / 5;

        System.out.printf("\nPromedio: %.2f%n", promedio);
        System.out.println("Aprobados: " + aprobados);
        System.out.println("Reprobados: " + reprobados);

        sc.close();
    }
}
