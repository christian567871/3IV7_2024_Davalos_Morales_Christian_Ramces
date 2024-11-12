import math


#Vamos a crear una funcion

def rectangulo(baes, altura):
    area = base * altura
    perimetro = 2 * ( base * altura)
    return area, perimetro

def triangulo(baes, altura):
    area = (base * altura) / 2
    perimetro = lado1 + lado2 + lado3
    return area, perimetro

def esfera(baes, altura):
    volumen = (4/3) * math.pi * radio**3
    perimetro = lado1 + lado2 + lado3
    return volumen

def menu():
    print("Hola bienbenido a Python con funciones")
    print("Elije una opcion: ")
    print("A, - Area y Perimetro de Rectangulo")
    print("B, - Area y Perimetro de Triangulo")
    print("C, - Volumen de Esfera")


#Programa
menu()
opcion = input("Introduce las opciones a desear: ").upper()

if opcion == "A" :
    base = float(input("INTRODUCE LA BASE DEL TRIANGULO"))
    altura = float(input("INTRODUCE LA altura DEL TRIANGULO"))
    area, perimetro = rectangulo(base, altura)
    print("El area es de: ", area)
    print("El perimetro es de: ", perimetro)

elif opcion == "B" :
    base = float(input("INTRODUCE LA BASE DEL TRIANGULO"))
    altura = float(input("INTRODUCE LA altura DEL TRIANGULO"))
    lado1 = float(input("INTRODUCE el lado 1 del TRIANGULO"))
    lado2 = float(input("INTRODUCE el lado 2 del TRIANGULO"))
    lado3 = float(input("INTRODUCE el lado 3 del TRIANGULO"))
    area, perimetro = rectangulo(base, altura, lado1, lado2, lado3)
    print("El area es de: ", area)
    print("El perimetro es de: ", perimetro)

elif opcion == "C" :
    radio = float(input("Introudce el radio"))
    volumen = esfera,radio
    print("El volumen es de: ", volumen)

else:
    print("Opcion no valida")