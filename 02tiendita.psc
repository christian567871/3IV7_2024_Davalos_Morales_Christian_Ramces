Algoritmo tiendita
	Definir producto como texto
	Definir codigoproducto, cantidad como entero
	Definir precio como real
	Mientras opcion <> 5 Hacer
		Escribir "1- Ingresa un nuevo producto"
		Escribir "2- Actualiza un producto"
		Escribir "3- Consulta el inventario"
		Escribir "4- Generar Reporte"
		Escribir "5- Salir"
		Leer opcion
		Segun opcion Hacer
			Caso 1:
				Escribir "Ingresa el nombre del producto"
				Leer producto
				Escribir "Ingresa el codigo del producto"
				Leer codigoproducto
				Escribir "Ingresa la cantidad"
				Leer cantidad
				Escribir "Ingresa el precio"
				Leer precio
			Caso 2:
				Escribir "Ingresa el codigo del producto actualizar"
				Leer codigoproducto
				Escribir "Ingresa la nueva cantidad"
				Leer cantidad
			Caso 3:
				Escribir "Consultar inventario"
				Escribir "nombre del producto", producto
				Escribir "codigo del producto", codigoproducto
				Escribir "cantidad del producto", cantidad
				Escribir "precio del producto", precio
			Caso 4:
				Escribir "cositas"
			De Otro Modo:
				secuencia_de_acciones_dom
		Fin Segun
	FinMientras
	
FinAlgoritmo
