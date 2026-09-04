Algoritmo Ejercicio3_Cajero
	Definir saldo, monto Como Real
	Definir opcion Como Entero
	saldo <- 500
	
	Repetir
		Escribir "1. Consultar saldo"
		Escribir "2. Depositar"
		Escribir "3. Retirar"
		Escribir "4. Salir"
		Leer opcion
		
		Segun opcion Hacer
			1:
				Escribir "Saldo actual: $", saldo
			2:
				Leer monto
				Si monto > 0 Entonces
					saldo <- saldo + monto
					Escribir "Saldo actualizado: $", saldo
				SiNo
					Escribir "Deposito invalido."
				FinSi
			3:
				Leer monto
				Si monto > 0 Entonces
					Si monto <= 500 Entonces
						Si monto <= saldo Entonces
							saldo <- saldo - monto
							Escribir "Saldo actualizado: $", saldo
						SiNo
							Escribir "Retiro invalido: saldo insuficiente."
						FinSi
					SiNo
						Escribir "Retiro invalido: no puede superar $500."
					FinSi
				SiNo
					Escribir "Retiro invalido: el monto debe ser positivo."
				FinSi
			4:
				Escribir "Programa finalizado."
			De Otro Modo:
				Escribir "Opcion invalida."
		FinSegun
	Hasta Que opcion = 4
FinAlgoritmo
