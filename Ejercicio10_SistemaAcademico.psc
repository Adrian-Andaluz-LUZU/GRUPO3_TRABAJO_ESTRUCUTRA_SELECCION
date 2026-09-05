Algoritmo Ejercicio10_Sistema_académico_integrador
	
    Definir opcion, cantidad, i Como Entero
    Definir buscado Como Cadena
    Definir encontrado Como Logico
	
    Definir nota1, nota2, nota3, asistencia, promedio Como Real
    Definir nombres, clasificacion Como Cadena
	
    Dimension nombres[100]
    Dimension nota1[100]
    Dimension nota2[100]
    Dimension nota3[100]
    Dimension asistencia[100]
    Dimension promedio[100]
    Dimension clasificacion[100]
	
    cantidad <- 1
	
    Repetir
		
        Escribir "=============================="
        Escribir "  SISTEMA ACADEMICO INTEGRADO"
        Escribir "=============================="
        Escribir "1. Registrar estudiante"
        Escribir "2. Mostrar resultados"
        Escribir "3. Buscar estudiante"
        Escribir "4. Salir"
        Escribir "Seleccione una opcion:"
        Leer opcion
		
        Segun opcion Hacer
			
            1:
				
                Si cantidad <= 100 Entonces
					
                    Escribir "----- REGISTRO DE ESTUDIANTE -----"
					
                    Escribir "Ingrese nombre:"
                    Leer nombres[cantidad]
					
					
                    Repetir
						
                        Escribir "Ingrese calificacion 1 (0-10):"
                        Leer nota1[cantidad]
						
                        Si nota1[cantidad] < 0 O nota1[cantidad] > 10 Entonces
                            Escribir "ERROR: Calificacion fuera de rango"
                        FinSi
						
                    Hasta Que nota1[cantidad] >= 0 Y nota1[cantidad] <= 10
					
					
                    Repetir
						
                        Escribir "Ingrese calificacion 2 (0-10):"
                        Leer nota2[cantidad]
						
                        Si nota2[cantidad] < 0 O nota2[cantidad] > 10 Entonces
                            Escribir "ERROR: Calificacion fuera de rango"
                        FinSi
						
                    Hasta Que nota2[cantidad] >= 0 Y nota2[cantidad] <= 10
					
					
                    Repetir
						
                        Escribir "Ingrese calificacion 3 (0-10):"
                        Leer nota3[cantidad]
						
                        Si nota3[cantidad] < 0 O nota3[cantidad] > 10 Entonces
                            Escribir "ERROR: Calificacion fuera de rango"
                        FinSi
						
                    Hasta Que nota3[cantidad] >= 0 Y nota3[cantidad] <= 10
					
					
                    Repetir
						
                        Escribir "Ingrese porcentaje de asistencia (0-100):"
                        Leer asistencia[cantidad]
						
                        Si asistencia[cantidad] < 0 O asistencia[cantidad] > 100 Entonces
                            Escribir "ERROR: Asistencia fuera de rango"
                        FinSi
						
                    Hasta Que asistencia[cantidad] >= 0 Y asistencia[cantidad] <= 100
					
					
                    promedio[cantidad] <- (nota1[cantidad] + nota2[cantidad] + nota3[cantidad]) / 3
					
					
                    Si promedio[cantidad] >= 9 Y asistencia[cantidad] >= 90 Entonces
						
                        clasificacion[cantidad] <- "Excelente"
						
                    Sino
						
                        Si promedio[cantidad] >= 7 Y asistencia[cantidad] >= 70 Entonces
							
                            clasificacion[cantidad] <- "Aprobado"
							
                        Sino
							
                            Si promedio[cantidad] >= 5 Y asistencia[cantidad] >= 70 Entonces
								
                                clasificacion[cantidad] <- "Recuperacion"
								
                            Sino
								
                                clasificacion[cantidad] <- "Reprobado"
								
                            FinSi
							
                        FinSi
						
                    FinSi
					
					
                    Escribir "Estudiante registrado correctamente."
					
                    cantidad <- cantidad + 1
					
                Sino
					
                    Escribir "No se pueden registrar mas estudiantes."
					
                FinSi
				
				
            2:
				
                Escribir "----- RESULTADOS -----"
				
                Si cantidad = 1 Entonces
					
                    Escribir "No existen estudiantes registrados."
					
                Sino
					
                    Para i <- 1 Hasta cantidad - 1 Hacer
						
                        Escribir "----------------------------"
                        Escribir "Nombre: ", nombres[i]
                        Escribir "Nota 1: ", nota1[i]
                        Escribir "Nota 2: ", nota2[i]
                        Escribir "Nota 3: ", nota3[i]
                        Escribir "Asistencia: ", asistencia[i], "%"
                        Escribir "Promedio: ", promedio[i]
                        Escribir "Clasificacion: ", clasificacion[i]
						
                    FinPara
					
                FinSi
				
				
            3:
				
                Escribir "----- BUSCAR ESTUDIANTE -----"
				
                Si cantidad = 1 Entonces
					
                    Escribir "No existen estudiantes registrados."
					
                Sino
					
                    Escribir "Ingrese el nombre a buscar:"
                    Leer buscado
					
                    i <- 1
                    encontrado <- Falso
					
					
                    Mientras i < cantidad Y encontrado = Falso Hacer
						
                        Si nombres[i] = buscado Entonces
							
                            encontrado <- Verdadero
							
                        Sino
							
                            i <- i + 1
							
                        FinSi
						
                    FinMientras
					
					
                    Si encontrado = Verdadero Entonces
						
                        Escribir "----- ESTUDIANTE ENCONTRADO -----"
                        Escribir "Nombre: ", nombres[i]
                        Escribir "Nota 1: ", nota1[i]
                        Escribir "Nota 2: ", nota2[i]
                        Escribir "Nota 3: ", nota3[i]
                        Escribir "Asistencia: ", asistencia[i], "%"
                        Escribir "Promedio: ", promedio[i]
                        Escribir "Clasificacion: ", clasificacion[i]
						
                    Sino
						
                        Escribir "Estudiante no encontrado."
						
                    FinSi
					
                FinSi
				
				
            4:
				
                Escribir "Saliendo del sistema..."
				
				
            De Otro Modo:
				
                Escribir "ERROR: Opcion invalida."
				
        FinSegun
		
    Hasta Que opcion = 4
	
FinAlgoritmo
