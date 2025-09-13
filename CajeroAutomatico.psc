Algoritmo CajeroAutomatico
	Definir saldo, opcion, monto Como Real
	saldo <- 0
	
	Repetir
		Escribir 'MEN�'
		Escribir '1. Consultar saldo'
		Escribir '2. Depositar'
		Escribir '3. Retirar'
		Escribir '4. Salir'
		Leer opcion
		
		Seg�n opcion Hacer
	1:
		Escribir 'Saldo actual disponible: ', saldo
	2:
		Escribir 'Ingrese monto a depositar: '
		Leer monto
		Si monto > 0 Entonces
			saldo <- saldo + monto
			Escribir 'Dep�sito exitoso. Nuevo saldo: ', saldo
		SiNo
			Escribir 'Error: el monto debe ser positivo.'
		FinSi
	3:
		Escribir 'Ingrese monto a retirar: '
		Leer monto
		Si monto > saldo Entonces
			Escribir 'Error: saldo insuficiente.'
		SiNo
			saldo <- saldo - monto
			Escribir 'Retiro exitoso. Nuevo saldo: ', saldo
		FinSi
	4:
		Escribir 'Saliendo del sistema...'
	De Otro Modo:
		Escribir 'Opci�n inv�lida. Intente de nuevo'
FinSeg�n

Si opcion <> 4 Entonces
	Escribir '�Desea realizar otra operaci�n? (S/N)'
	Leer continuar
FinSi
Hasta Que opcion = 4

Escribir 'Gracias, hasta pronto.'
FinAlgoritmo
