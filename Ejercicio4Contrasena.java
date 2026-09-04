import java.util.Scanner;

public class Ejercicio4Contrasena {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        final String CLAVE_CORRECTA = "Java2026";
        int intentos = 0;
        boolean acceso = false;

        while (intentos < 3 && !acceso) {
            System.out.print("Ingrese la contraseña: ");
            String clave = sc.nextLine();
            intentos++;

            if (clave.equals(CLAVE_CORRECTA)) {
                acceso = true;
                System.out.println("Acceso permitido.");
            } else {
                int restantes = 3 - intentos;
                if (restantes > 0) {
                    System.out.println("Contraseña incorrecta. Intentos restantes: " + restantes);
                }
            }
        }

        if (!acceso) {
            System.out.println("Usuario bloqueado.");
        }

        sc.close();
    }
}
