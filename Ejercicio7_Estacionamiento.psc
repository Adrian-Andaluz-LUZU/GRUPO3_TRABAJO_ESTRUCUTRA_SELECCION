Algoritmo Ejercicio7_Estacionamiento
	Definir opcion, vehiculo, rol, horas, perdido Como Entero
	Definir tarifaHora, base, recaudacion Como Real
	recaudacion <- 0
	
	Repetir
		Escribir "1. Calcular tarifa"
		Escribir "2. Ver tarifas"
		Escribir "3. Mostrar recaudacion"
		Escribir "4. Salir"
		Leer opcion
		
		Segun opcion Hacer
			1:
				Escribir "Vehiculo: 1=Moto, 2=Auto, 3=Camioneta"
				Leer vehiculo
				Escribir "Rol: 1=Estudiante, 2=Docente, 3=General"
				Leer rol
				Escribir "Horas (1 a 24):"
				Leer horas
				Escribir "Boleto perdido? 1=Si, 0=No:"
				Leer perdido
				
				Si horas >= 1 Y horas <= 24 Entonces
					Segun vehiculo Hacer
						1:
							tarifaHora <- 0.50
						2:
							tarifaHora <- 1
						3:
							tarifaHora <- 1.50
						De Otro Modo:
							tarifaHora <- 0
							Escribir "Vehiculo invalido."
					FinSegun
					
					Si tarifaHora > 0 Entonces
						Si rol >= 1 Y rol <= 3 Entonces
							Si perdido = 0 O perdido = 1 Entonces
								base <- tarifaHora * horas
								
								Si rol = 1 Entonces
									base <- base * 0.80
								SiNo
									Si rol = 2 Entonces
										base <- base * 0.90
									FinSi
								FinSi
								
								Si perdido = 1 Entonces
									base <- base + 5
								FinSi
								
								recaudacion <- recaudacion + base
								Escribir "Tarifa a pagar: $", base
							SiNo
								Escribir "Opcion de boleto invalida."
							FinSi
						SiNo
							Escribir "Rol invalido."
						FinSi
					FinSi
				SiNo
					Escribir "Horas invalidas."
				FinSi
				
			2:
				Escribir "Moto: $0.50/h"
				Escribir "Auto: $1.00/h"
				Escribir "Camioneta: $1.50/h"
			3:
				Escribir "Recaudacion: $", recaudacion
			4:
				Escribir "Programa finalizado."
			De Otro Modo:
				Escribir "Opcion invalida."
		FinSegun
	Hasta Que opcion = 4
FinAlgoritmo
