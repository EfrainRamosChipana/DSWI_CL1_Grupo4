package pe.edu.cibertec.DSWII_CL1SOAP_Grupo4.pregunta2;

import java.util.Scanner;

import static pe.edu.cibertec.DSWII_CL1SOAP_Grupo4.pregunta2.Pregunta2.*;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        //1.Validar si un año es bisiesto
        System.out.print("Ingrese un año: ");
        int year = scanner.nextInt();
        if (esBisiesto(year)) {
            System.out.println(year + " es un año bisiesto.");
        } else {
            System.out.println(year + " no es un año bisiesto.");
        }

        //2. Determinar si un alumno aprueba o reprueba un curso
        System.out.println("Ingrese las tres calificaciones del alumno: ");
        double nota1 = scanner.nextDouble();
        double nota2 = scanner.nextDouble();
        double nota3 = scanner.nextDouble();
        double promedio = (nota1 + nota2 + nota3) / 3;
        if (promedio >= 70) {
            System.out.println("El alumno aprueba con un promedio de " + promedio);
        } else {
            System.out.println("El alumno reprueba con un promedio de " + promedio);
        }

        //3. Validar si un número en una serie es un número perfecto
        System.out.print("Ingrese un número límite: ");
        int limite = scanner.nextInt();
        for (int i = 1; i <= limite; i++) {
            if (esNumeroPerfecto(i)) {
                System.out.println(i + " es un número perfecto.");
            }
        }

        scanner.close();


        //4. Tipo de vehículos y sus límites
        System.out.println("Vehículos y maxima tasa de alcohol:");
        System.out.println("1. Camión - 0.30 ");
        System.out.println("2. Autobús - 0.30 ");
        System.out.println("3. Turismo - 0.50");
        System.out.println("4. Motocicleta - 0.30");

        System.out.print("Ingrese el indicador del tipo de vehículo (1-4): ");
        int tipoVehiculo = scanner.nextInt();

        System.out.print("Ingrese la tasa de alcohol");
        double tasaAlcohol = scanner.nextDouble();

        double limitePermitido = obtenerLimitePermitido(tipoVehiculo);

        if (tasaAlcohol > limitePermitido) {
            System.out.println("El conductor da positivo en el control de alcoholemia");
        } else {
            System.out.println("El conductor da negativo en el control de alcoholemia");
        }
        scanner.close();

    }
}
