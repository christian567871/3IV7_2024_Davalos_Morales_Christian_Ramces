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
        Escribir "Sistema de Gestión de Reservas de Hotel"
        Escribir "1. Registrar reserva"
        Escribir "2. Cancelar reserva"
        Escribir "3. Consultar disponibilidad"
        Escribir "4. Gestionar ocupación"
        Escribir "5. Salir"
        Leer opcion
			Segun opcion Hacer
				Caso 1:
					Si reservaActual <= 10 Entonces
						Repetir
							Escribir "Ingrese el número de habitación (1-10):"
							Leer numeroReserva
							Si numeroReserva < 1 O numeroReserva > 10 Entonces
								Escribir "Número de habitación no válido. Debe estar entre 1 y 10."
							FinSi
						Hasta Que numeroReserva >= 1 Y numeroReserva <= 10
						Si habitaciones[numeroReserva] = Falso Entonces
							habitaciones[numeroReserva] <- Verdadero
							reservas[numeroReserva] <- reservaActual
							reservaActual <- reservaActual + 1
							ocupadas <- ocupadas + 1
							Escribir "Reserva registrada con éxito. Número de reserva: ", reservaActual-1
						Sino
							Escribir "La habitación ya está ocupada."
						FinSi
					Sino
						Escribir "El hotel está lleno."
					FinSi
				Caso 2:

					Escribir "Ingrese el número de reserva a cancelar:"
					Leer numeroReserva
					Si reservas[numeroReserva] <> 0 Entonces
						habitaciones[numeroReserva] <- Falso
						reservas[numeroReserva] <- 0
						ocupadas <- ocupadas - 1
						Escribir "Reserva cancelada con éxito."
					Sino
						Escribir "Número de reserva no encontrado."
					FinSi
				Caso 3:
					Escribir "Habitaciones disponibles:"
					Para i <- 1 Hasta 10 Con Paso 1
						Si habitaciones[i] = Falso Entonces
							Escribir "Habitación ", i, " está disponible."
						Sino
							Escribir "Habitación ", i, " está ocupada."
						FinSi
					FinPara
				Caso 4:
					Escribir "Porcentaje de ocupación del hotel: ", (ocupadas / 10) * 100, "%"
				Caso 5:
					Escribir "Saliendo del sistema."
				De Otro Modo:
					Escribir "Opción no válida, intente de nuevo."
			FinSegun
		FinMientras
		


FinAlgoritmo
