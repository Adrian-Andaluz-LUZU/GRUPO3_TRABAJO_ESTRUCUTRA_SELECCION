Algoritmo ClasificacionCalificaciones
    suma <- 0
    aprobados <- 0
    reprobados <- 0
	
    Para i <- 1 Hasta 5 Hacer
        Repetir
            Leer nota
            Si nota < 0 O nota > 10 Entonces
                Escribir "Nota inválida"
            FinSi
        Hasta Que nota >= 0 Y nota <= 10
		
        Si nota >= 9 Entonces
            Escribir "Excelente"
        SiNo
            Si nota >= 7 Entonces
                Escribir "Aprobado"
            SiNo
                Si nota >= 5 Entonces
                    Escribir "Supletorio"
                SiNo
                    Escribir "Reprobado"
                FinSi
            FinSi
        FinSi
		
        suma <- suma + nota
		
        Si nota >= 7 Entonces
            aprobados <- aprobados + 1
        FinSi
		
        Si nota < 5 Entonces
            reprobados <- reprobados + 1
        FinSi
    FinPara
	
    promedio <- suma / 5
    Escribir "Promedio: ", promedio
    Escribir "Aprobados: ", aprobados
    Escribir "Reprobados: ", reprobados
FinAlgoritmo
