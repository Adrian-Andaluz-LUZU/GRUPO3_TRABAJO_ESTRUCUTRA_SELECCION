Algoritmo Ejercicio6_Temperaturas
	Definir temp, suma, mayor, menor, promedio Como Real
	Definir cantidad, frio, templado, calido, muyCalido Como Entero
	
	suma <- 0
	cantidad <- 0
	frio <- 0
	templado <- 0
	calido <- 0
	muyCalido <- 0
	
	Escribir "Ingrese temperatura (-50 a 60) o 999 para terminar:"
	Leer temp
	
	Mientras temp <> 999 Hacer
		Si temp < -50 O temp > 60 Entonces
			Escribir "Temperatura invalida."
		SiNo
			suma <- suma + temp
			cantidad <- cantidad + 1
			
			Si cantidad = 1 Entonces
				mayor <- temp
				menor <- temp
			SiNo
				Si temp > mayor Entonces
					mayor <- temp
				FinSi
				Si temp < menor Entonces
					menor <- temp
				FinSi
			FinSi
			
			Si temp < 10 Entonces
				frio <- frio + 1
			SiNo
				Si temp <= 24 Entonces
					templado <- templado + 1
				SiNo
					Si temp <= 34 Entonces
						calido <- calido + 1
					SiNo
						muyCalido <- muyCalido + 1
					FinSi
				FinSi
			FinSi
		FinSi
		
		Escribir "Ingrese otra temperatura o 999 para terminar:"
		Leer temp
	FinMientras
	
	Si cantidad > 0 Entonces
		promedio <- suma / cantidad
		Escribir "Cantidad: ", cantidad
		Escribir "Mayor: ", mayor
		Escribir "Menor: ", menor
		Escribir "Promedio: ", promedio
		Escribir "Frio: ", frio
		Escribir "Templado: ", templado
		Escribir "Calido: ", calido
		Escribir "Muy calido: ", muyCalido
	SiNo
		Escribir "No se registraron datos validos."
	FinSi
FinAlgoritmo
