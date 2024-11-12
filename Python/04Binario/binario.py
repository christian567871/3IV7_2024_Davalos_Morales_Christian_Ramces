def binario_a_decimal(binario):
    # Inicializar el resultado
    decimal = 0
    # Invertir el binario para procesarlo de derecha a izquierda
    binario = binario[::-1]

    # Recorrer cada dígito del binario
    for i in range(len(binario)):
        # Convertir el dígito en entero y multiplicar por la potencia de 2
        decimal += int(binario[i]) * (2 ** i)

    return decimal

# Solicitar al usuario que ingrese un número binario
numero_binario = input("Introduce un número binario: ")

# Validar que la entrada es un número binario
if all(bit in '01' for bit in numero_binario):
    resultado = binario_a_decimal(numero_binario)
    print(f"El número binario {numero_binario} en decimal es: {resultado}")
else:
    print("Error: El número ingresado no es binario.")