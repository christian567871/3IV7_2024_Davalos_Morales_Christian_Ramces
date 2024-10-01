Algoritmo sin_titulo
	
	Dimension habitaciones[10]
    Dimension reservas[10]
    Definir reservaActual, opcion, numeroReserva, ocupadas Como Entero
    reservaActual <- 1
    ocupadas <- 0
    Para i <- 1 Hasta 10 Con Paso 1
        habitaciones[i] <- Falso
        reservas[i] <- 0
    FinPara
    Mientras opcion <> 5 Hacer
        Escribir "Sistema de Gesti�n de Reservas de Hotel"
        Escribir "1. Registrar reserva"
        Escribir "2. Cancelar reserva"
        Escribir "3. Consultar disponibilidad"
        Escribir "4. Gestionar ocupaci�n"
        Escribir "5. Salir"
        Leer opcion
			Segun opcion Hacer
				Caso 1:
					Si reservaActual <= 10 Entonces
						Repetir
							Escribir "Ingrese el n�mero de habitaci�n (1-10):"
							Leer numeroReserva
							Si numeroReserva < 1 O numeroReserva > 10 Entonces
								Escribir "N�mero de habitaci�n no v�lido. Debe estar entre 1 y 10."
							FinSi
						Hasta Que numeroReserva >= 1 Y numeroReserva <= 10
						Si habitaciones[numeroReserva] = Falso Entonces
							habitaciones[numeroReserva] <- Verdadero
							reservas[numeroReserva] <- reservaActual
							reservaActual <- reservaActual + 1
							ocupadas <- ocupadas + 1
							Escribir "Reserva registrada con �xito. N�mero de reserva: ", reservaActual-1
						Sino
							Escribir "La habitaci�n ya est� ocupada."
						FinSi
					Sino
						Escribir "El hotel est� lleno."
					FinSi
				Caso 2:

					Escribir "Ingrese el n�mero de reserva a cancelar:"
					Leer numeroReserva
					Si reservas[numeroReserva] <> 0 Entonces
						habitaciones[numeroReserva] <- Falso
						reservas[numeroReserva] <- 0
						ocupadas <- ocupadas - 1
						Escribir "Reserva cancelada con �xito."
					Sino
						Escribir "N�mero de reserva no encontrado."
					FinSi
				Caso 3:
					Escribir "Habitaciones disponibles:"
					Para i <- 1 Hasta 10 Con Paso 1
						Si habitaciones[i] = Falso Entonces
							Escribir "Habitaci�n ", i, " est� disponible."
						Sino
							Escribir "Habitaci�n ", i, " est� ocupada."
						FinSi
					FinPara
				Caso 4:
					Escribir "Porcentaje de ocupaci�n del hotel: ", (ocupadas / 10) * 100, "%"
				Caso 5:
					Escribir "Saliendo del sistema."
				De Otro Modo:
					Escribir "Opci�n no v�lida, intente de nuevo."
			FinSegun
		FinMientras
		


FinAlgoritmo
