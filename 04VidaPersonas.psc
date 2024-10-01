Proceso CensoPersonas
    Definir maxPersonas Como Entero
    maxPersonas <- 100 // M�ximo n�mero de personas
	
    // Declaraci�n de arreglos
    Dimension aniosNacimiento[maxPersonas]  // Arreglo para a�os de nacimiento
    Dimension aniosFallecimiento[maxPersonas]  // Arreglo para a�os de fallecimiento
    Definir cantidadPersonas Como Entero
    Definir aniosConsulta Como Entero
    Dimension aniosConsultaList[100]  // Arreglo para a�os a consultar
    Definir i, anio, cantidadVivos Como Entero
    Definir edadMasJoven, edadMasAnciano Como Entero
	
    // Solicitar la cantidad de personas
    Escribir "Ingrese la cantidad de personas (m�ximo ", maxPersonas, "): "
    Leer cantidadPersonas
	
    // Validar que la cantidad no exceda el l�mite
    Mientras cantidadPersonas < 1 O cantidadPersonas > maxPersonas Hacer
        Escribir "Cantidad no v�lida, ingrese nuevamente: "
        Leer cantidadPersonas
    Fin Mientras
	
    // Ingreso de datos de personas
    Para i Desde 1 Hasta cantidadPersonas Hacer  // Cambiar a 1 para iniciar desde el �ndice 1
        // Ingreso de a�o de nacimiento
        Escribir "Ingrese el a�o de nacimiento de la persona ", i, ": "
        Leer aniosNacimiento[i]
        
        // Validar a�o de nacimiento
        Mientras aniosNacimiento[i] < 0 Hacer
            Escribir "A�o de nacimiento no v�lido. Ingrese nuevamente: "
            Leer aniosNacimiento[i]
        Fin Mientras
        
        // Ingreso de a�o de fallecimiento
        Escribir "Ingrese el a�o de fallecimiento de la persona ", i, ": "
        Leer aniosFallecimiento[i]
        
        // Validar a�o de fallecimiento
        Mientras aniosFallecimiento[i] < aniosNacimiento[i] Hacer
            Escribir "A�o de fallecimiento no v�lido. Ingrese nuevamente: "
            Leer aniosFallecimiento[i]
        Fin Mientras
    Fin Para
	
    // Solicitar a�os a consultar
    Escribir "Ingrese la cantidad de a�os a consultar: "
    Leer aniosConsulta
	
    // Validar que la cantidad no exceda el l�mite
    Mientras aniosConsulta < 1 O aniosConsulta > 100 Hacer
        Escribir "Cantidad no v�lida, ingrese nuevamente: "
        Leer aniosConsulta
    Fin Mientras
	
    Para i Desde 1 Hasta aniosConsulta Hacer  // Cambiar a 1 para iniciar desde el �ndice 1
        Escribir "Ingrese el a�o a consultar ", i, ": "
        Leer aniosConsultaList[i]
    Fin Para
	
    // Procesar consultas
    Para anio Desde 1 Hasta aniosConsulta Hacer  // Cambiar a 1 para iniciar desde el �ndice 1
        cantidadVivos <- 0
        edadMasJoven <- 100 // Asignar un n�mero alto para encontrar el m�nimo
        edadMasAnciano <- 0
        
        Para j Desde 1 Hasta cantidadPersonas Hacer  // Cambiar a 1 para iniciar desde el �ndice 1
            Si aniosConsultaList[anio] >= aniosNacimiento[j] Y aniosConsultaList[anio] <= aniosFallecimiento[j] Entonces
                cantidadVivos <- cantidadVivos + 1
                edad <- aniosConsultaList[anio] - aniosNacimiento[j]
                
                Si edad < edadMasJoven Entonces
                    edadMasJoven <- edad
                Fin Si
                
                Si edad > edadMasAnciano Entonces
                    edadMasAnciano <- edad
                Fin Si
            Fin Si
        Fin Para
        
        // Mostrar resultados
        Escribir "En el a�o ", aniosConsultaList[anio], " hab�a ", cantidadVivos, " personas vivas."
        
        Si cantidadVivos > 0 Entonces
            Escribir "La persona viva m�s joven ten�a ", edadMasJoven, " a�os."
            Escribir "La persona viva m�s anciana ten�a ", edadMasAnciano, " a�os."
        Sino
            Escribir "No hab�a personas vivas en este a�o."
        Fin Si
    Fin Para
Fin Proceso
