Algoritmo TablaSeleccionada
    Repetir
        Leer numero
        Si numero < 1 O numero > 12 Entonces
            Escribir "Número inválido"
        FinSi
    Hasta Que numero >= 1 Y numero <= 12
	
    Repetir
        Escribir "1. Tabla ascendente"
        Escribir "2. Tabla descendente"
        Escribir "3. Salir"
        Leer opcion
		
        Segun opcion Hacer
            1:
                Para i <- 1 Hasta 12 Hacer
                    Escribir numero, " x ", i, " = ", numero*i
                FinPara
            2:
                Para i <- 12 Hasta 1 Con Paso -1 Hacer
                    Escribir numero, " x ", i, " = ", numero*i
                FinPara
            3:
                Escribir "Programa finalizado"
            De Otro Modo:
                Escribir "Opción inválida"
        FinSegun
    Hasta Que opcion = 3
FinAlgoritmo
