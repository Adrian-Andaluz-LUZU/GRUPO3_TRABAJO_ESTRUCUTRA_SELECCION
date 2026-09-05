Algoritmo Ejercicio9_Cafeteria
	Definir opcion, cantidad Como Entero
	Definir precio, subtotal, descuento, total Como Real
	subtotal <- 0
	
	Repetir
		Escribir "1. Cafe - $1.50"
		Escribir "2. Sandwich - $2.50"
		Escribir "3. Jugo - $1.75"
		Escribir "4. Ensalada - $3.00"
		Escribir "5. Finalizar"
		Leer opcion
		
		Segun opcion Hacer
			1:
				precio <- 1.50
			2:
				precio <- 2.50
			3:
				precio <- 1.75
			4:
				precio <- 3
			5:
				Escribir "Finalizando compra."
			De Otro Modo:
				Escribir "Opcion invalida."
		FinSegun
		
		Si opcion >= 1 Y opcion <= 4 Entonces
			Escribir "Ingrese cantidad:"
			Leer cantidad
			
			Si cantidad > 0 Entonces
				subtotal <- subtotal + precio * cantidad
				Escribir "Subtotal: $", subtotal
			SiNo
				Escribir "Cantidad invalida."
			FinSi
		FinSi
	Hasta Que opcion = 5
	
	Si subtotal < 10 Entonces
		descuento <- 0
	SiNo
		Si subtotal < 20 Entonces
			descuento <- 0.05
		SiNo
			Si subtotal < 50 Entonces
				descuento <- 0.10
			SiNo
				descuento <- 0.15
			FinSi
		FinSi
	FinSi
	
	total <- subtotal - subtotal * descuento
	Escribir "Subtotal: $", subtotal
	Escribir "Descuento: ", descuento * 100, "%"
	Escribir "Total final: $", total
FinAlgoritmo
