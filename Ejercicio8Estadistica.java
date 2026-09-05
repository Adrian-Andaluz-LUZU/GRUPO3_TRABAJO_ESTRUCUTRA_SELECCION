import java.util.Scanner;

public class Ejercicio8Estadistica {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n, num;
        int positivo = 0, negativo = 0, cero = 0;
        int par = 0, impar = 0, multiplos3 = 0;
        int suma = 0;

        System.out.print("Cantidad de números: ");
        n = sc.nextInt();

        if (n < 0) {
            System.out.println("Cantidad inválida.");
        } else {
            for (int i = 1; i <= n; i++) {
                System.out.print("Número " + i + ": ");
                num = sc.nextInt();
                suma += num;

                if (num > 0) positivo++;
                else if (num < 0) negativo++;
                else cero++;

                if (num % 2 == 0) par++;
                else impar++;

                if (num % 3 == 0) multiplos3++;
            }

            System.out.println("Positivos: " + positivo);
            System.out.println("Negativos: " + negativo);
            System.out.println("Ceros: " + cero);
            System.out.println("Pares: " + par);
            System.out.println("Impares: " + impar);
            System.out.println("Múltiplos de 3: " + multiplos3);
            System.out.println("Suma: " + suma);

            if (n > 0)
                System.out.println("Promedio: " + ((double) suma / n));
            else
                System.out.println("No hay datos; no se calcula promedio.");
        }
        sc.close();
    }
}
