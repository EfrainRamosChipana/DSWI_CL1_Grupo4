package pe.edu.cibertec.DSWII_CL1SOAP_Grupo4.pregunta2;

public class Pregunta2 {


    public static boolean esBisiesto(int anio) {
        if ((anio % 4 == 0 && anio % 100 != 0) || (anio % 400 == 0)) {
            return true;
        } else {
            return false;
        }
    }

    public static boolean esNumeroPerfecto(int numero) {
        int suma = 0;
        for (int i = 1; i <= numero / 2; i++) {
            if (numero % i == 0) {
                suma += i;
            }
        }
        return suma == numero;
    }


    public static double obtenerLimitePermitido(int tipoVehiculo) {
        switch (tipoVehiculo) {
            case 1:
                return 0.30;
            case 2:
                return 0.30;
            case 3:
                return 0.50;
            case 4:
                return 0.30;
            default:
                System.out.println("Tipo de vehículo no válido.");
                return -1;
        }
    }

}
