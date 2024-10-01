Proceso CensoPersonas
    Definir maxPersonas Como Entero
    maxPersonas <- 100 // Máximo número de personas
	
    // Declaración de arreglos
    Dimension aniosNacimiento[maxPersonas]  // Arreglo para años de nacimiento
    Dimension aniosFallecimiento[maxPersonas]  // Arreglo para años de fallecimiento
    Definir cantidadPersonas Como Entero
    Definir aniosConsulta Como Entero
    Dimension aniosConsultaList[100]  // Arreglo para años a consultar
    Definir i, anio, cantidadVivos Como Entero
    Definir edadMasJoven, edadMasAnciano Como Entero
	
    // Solicitar la cantidad de personas
    Escribir "Ingrese la cantidad de personas (máximo ", maxPersonas, "): "
    Leer cantidadPersonas
	
    // Validar que la cantidad no exceda el límite
    Mientras cantidadPersonas < 1 O cantidadPersonas > maxPersonas Hacer
        Escribir "Cantidad no válida, ingrese nuevamente: "
        Leer cantidadPersonas
    Fin Mientras
	
    // Ingreso de datos de personas
    Para i Desde 1 Hasta cantidadPersonas Hacer  // Cambiar a 1 para iniciar desde el índice 1
        // Ingreso de año de nacimiento
        Escribir "Ingrese el año de nacimiento de la persona ", i, ": "
        Leer aniosNacimiento[i]
        
        // Validar año de nacimiento
        Mientras aniosNacimiento[i] < 0 Hacer
            Escribir "Año de nacimiento no válido. Ingrese nuevamente: "
            Leer aniosNacimiento[i]
        Fin Mientras
        
        // Ingreso de año de fallecimiento
        Escribir "Ingrese el año de fallecimiento de la persona ", i, ": "
        Leer aniosFallecimiento[i]
        
        // Validar año de fallecimiento
        Mientras aniosFallecimiento[i] < aniosNacimiento[i] Hacer
            Escribir "Año de fallecimiento no válido. Ingrese nuevamente: "
            Leer aniosFallecimiento[i]
        Fin Mientras
    Fin Para
	
    // Solicitar años a consultar
    Escribir "Ingrese la cantidad de años a consultar: "
    Leer aniosConsulta
	
    // Validar que la cantidad no exceda el límite
    Mientras aniosConsulta < 1 O aniosConsulta > 100 Hacer
        Escribir "Cantidad no válida, ingrese nuevamente: "
        Leer aniosConsulta
    Fin Mientras
	
    Para i Desde 1 Hasta aniosConsulta Hacer  // Cambiar a 1 para iniciar desde el índice 1
        Escribir "Ingrese el año a consultar ", i, ": "
        Leer aniosConsultaList[i]
    Fin Para
	
    // Procesar consultas
    Para anio Desde 1 Hasta aniosConsulta Hacer  // Cambiar a 1 para iniciar desde el índice 1
        cantidadVivos <- 0
        edadMasJoven <- 100 // Asignar un número alto para encontrar el mínimo
        edadMasAnciano <- 0
        
        Para j Desde 1 Hasta cantidadPersonas Hacer  // Cambiar a 1 para iniciar desde el índice 1
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
        Escribir "En el año ", aniosConsultaList[anio], " había ", cantidadVivos, " personas vivas."
        
        Si cantidadVivos > 0 Entonces
            Escribir "La persona viva más joven tenía ", edadMasJoven, " años."
            Escribir "La persona viva más anciana tenía ", edadMasAnciano, " años."
        Sino
            Escribir "No había personas vivas en este año."
        Fin Si
    Fin Para
Fin Proceso
