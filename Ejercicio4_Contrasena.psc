Algoritmo Ejercicio4_Contrasena
	Definir claveCorrecta, claveIngresada Como Cadena
	Definir intentos, restantes Como Entero
	Definir acceso Como Logico
	
	claveCorrecta <- "Java2026"
	intentos <- 0
	acceso <- Falso
	
	Mientras intentos < 3 Y acceso = Falso Hacer
		Escribir "Ingrese la contrasena:"
		Leer claveIngresada
		intentos <- intentos + 1
		
		Si claveIngresada = claveCorrecta Entonces
			acceso <- Verdadero
			Escribir "Acceso permitido."
		SiNo
			restantes <- 3 - intentos
			Si restantes > 0 Entonces
				Escribir "Contrasena incorrecta."
				Escribir "Intentos restantes: ", restantes
			FinSi
		FinSi
	FinMientras
	
	Si acceso = Falso Entonces
		Escribir "Usuario bloqueado."
	FinSi
FinAlgoritmo
