Algoritmo Ejercicio8_Estadistica
	Definir n, i, num Como Entero
	Definir suma, positivo, negativo, cero, par, impar, multiplos3 Como Entero
	Definir promedio Como Real
	
	Escribir "Cuantos numeros ingresara?"
	Leer n
	
	Si n < 0 Entonces
		Escribir "Cantidad invalida."
	SiNo
		suma <- 0
		positivo <- 0
		negativo <- 0
		cero <- 0
		par <- 0
		impar <- 0
		multiplos3 <- 0
		
		Para i <- 1 Hasta n Hacer
			Escribir "Ingrese numero ", i, ":"
			Leer num
			suma <- suma + num
			
			Si num > 0 Entonces
				positivo <- positivo + 1
			SiNo
				Si num < 0 Entonces
					negativo <- negativo + 1
				SiNo
					cero <- cero + 1
				FinSi
			FinSi
			
			Si num MOD 2 = 0 Entonces
				par <- par + 1
			SiNo
				impar <- impar + 1
			FinSi
			
			Si num MOD 3 = 0 Entonces
				multiplos3 <- multiplos3 + 1
			FinSi
		FinPara
		
		Escribir "Positivos: ", positivo
		Escribir "Negativos: ", negativo
		Escribir "Ceros: ", cero
		Escribir "Pares: ", par
		Escribir "Impares: ", impar
		Escribir "Multiplos de 3: ", multiplos3
		Escribir "Suma: ", suma
		
		Si n > 0 Entonces
			promedio <- suma / n
			Escribir "Promedio: ", promedio
		SiNo
			Escribir "No hay datos; no se calcula promedio."
		FinSi
	FinSi
FinAlgoritmo
