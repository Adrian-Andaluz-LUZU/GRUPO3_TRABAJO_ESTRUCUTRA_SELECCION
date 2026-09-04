Algoritmo Ejercicio5_Cine
	Definir opcion, edad Como Entero
	Definir precio, descuento, precioFinal, total Como Real
	total <- 0
	
	Repetir
		Escribir "1. 2D - $5"
		Escribir "2. 3D - $7.50"
		Escribir "3. IMAX - $10"
		Escribir "4. Finalizar"
		Leer opcion
		
		Segun opcion Hacer
			1:
				precio <- 5
			2:
				precio <- 7.50
			3:
				precio <- 10
			4:
				Escribir "Finalizando compra."
			De Otro Modo:
				Escribir "Opcion invalida."
		FinSegun
		
		Si opcion >= 1 Y opcion <= 3 Entonces
			Escribir "Ingrese la edad:"
			Leer edad
			
			Si edad >= 0 Y edad <= 120 Entonces
				Si edad < 12 Entonces
					descuento <- 0.30
				SiNo
					Si edad >= 65 Entonces
						descuento <- 0.25
					SiNo
						descuento <- 0
					FinSi
				FinSi
				
				precioFinal <- precio - (precio * descuento)
				total <- total + precioFinal
				Escribir "Precio de la entrada: $", precioFinal
			SiNo
				Escribir "Edad invalida."
			FinSi
		FinSi
	Hasta Que opcion = 4
	
	Escribir "Total final: $", total
FinAlgoritmo
