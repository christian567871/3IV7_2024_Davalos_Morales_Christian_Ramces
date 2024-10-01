Algoritmo CobroEstacionamiento
    Definir horaEntrada, minutoEntrada, horaSalida, minutoSalida Como Entero
    Definir totalMinutos, horasCompletas, minutosRestantes, costoTotal Como Real
	
    Escribir "Ingrese la hora de entrada (0-23):"
    Leer horaEntrada
    Escribir "Ingrese los minutos de entrada (0-59):"
    Leer minutoEntrada
    Escribir "Ingrese la hora de salida (0-23):"
    Leer horaSalida
    Escribir "Ingrese los minutos de salida (0-59):"
    Leer minutoSalida
	
    totalMinutos = (horaSalida * 60 + minutoSalida) - (horaEntrada * 60 + minutoEntrada)
    
    Si totalMinutos < 0 Entonces
        totalMinutos = totalMinutos + 1440 
    FinSi

    horasCompletas = Trunc(totalMinutos / 60)
    minutosRestantes = totalMinutos % 60
	
    costoTotal = horasCompletas * 15
    Si minutosRestantes > 0 Entonces
        costoTotal = costoTotal + Trunc(minutosRestantes / 15) * 6
        Si minutosRestantes % 15 > 0 Entonces
            costoTotal = costoTotal + 6
        FinSi
    FinSi
	
    Si totalMinutos < 15 Entonces
        costoTotal = 0
    FinSi
	
    Escribir "El costo total es: ", costoTotal, " pesos"
FinAlgoritmo

