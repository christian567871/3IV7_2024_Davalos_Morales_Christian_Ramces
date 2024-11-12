import tkinter as tk
from tkinter import messagebox, simpledialog
import os

# Ruta del archivo para guardar los datos
ARCHIVO = "jugadores.txt"

# Lista de jugadores
jugadores = []

# Función para cargar datos desde el archivo
def cargar_datos():
    if os.path.exists(ARCHIVO):
        with open(ARCHIVO, "r") as f:
            for linea in f:
                partes = linea.strip().split(",")
                if len(partes) >= 8:
                    numero = partes[0]
                    nombre = partes[1]
                    apellido = partes[2]
                    posicion = partes[3]
                    edad = int(partes[4])
                    peso = float(partes[5])
                    altura = float(partes[6])
                    estadistica1 = float(partes[7])
                    estadistica2 = float(partes[8])
                    estadistica3 = float(partes[9])
                    estadistica4 = float(partes[10])
                    estadistica5 = float(partes[11])
                    
                    jugador = {
                        "numero": numero,
                        "nombre": nombre,
                        "apellido": apellido,
                        "posicion": posicion,
                        "edad": edad,
                        "peso": peso,
                        "altura": altura,
                        "estadistica1": estadistica1,
                        "estadistica2": estadistica2,
                        "estadistica3": estadistica3,
                        "estadistica4": estadistica4,
                        "estadistica5": estadistica5
                    }
                    jugadores.append(jugador)

# Función para guardar los datos en el archivo
def guardar_datos():
    with open(ARCHIVO, "w") as f:
        for jugador in jugadores:
            f.write(f"{jugador['numero']},{jugador['nombre']},{jugador['apellido']},{jugador['posicion']},{jugador['edad']},{jugador['peso']},{jugador['altura']},{jugador['estadistica1']},{jugador['estadistica2']},{jugador['estadistica3']},{jugador['estadistica4']},{jugador['estadistica5']}\n")

# Función para registrar un nuevo jugador
def registrar_jugador():
    numero = simpledialog.askstring("Entrada", "Ingresa el número del jugador:")
    nombre = simpledialog.askstring("Entrada", "Ingresa el nombre del jugador:")
    apellido = simpledialog.askstring("Entrada", "Ingresa el apellido del jugador:")
    posicion = simpledialog.askstring("Entrada", "Ingresa la posición del jugador:")
    edad = int(simpledialog.askstring("Entrada", "Ingresa la edad del jugador:"))
    peso = float(simpledialog.askstring("Entrada", "Ingresa el peso del jugador (en kg):"))
    altura = float(simpledialog.askstring("Entrada", "Ingresa la altura del jugador (en cm):"))
    estadistica1 = float(simpledialog.askstring("Entrada", "Ingresa la estadística 1 del jugador:"))
    estadistica2 = float(simpledialog.askstring("Entrada", "Ingresa la estadística 2 del jugador:"))
    estadistica3 = float(simpledialog.askstring("Entrada", "Ingresa la estadística 3 del jugador:"))
    estadistica4 = float(simpledialog.askstring("Entrada", "Ingresa la estadística 4 del jugador:"))
    estadistica5 = float(simpledialog.askstring("Entrada", "Ingresa la estadística 5 del jugador:"))

    jugador = {
        "numero": numero,
        "nombre": nombre,
        "apellido": apellido,
        "posicion": posicion,
        "edad": edad,
        "peso": peso,
        "altura": altura,
        "estadistica1": estadistica1,
        "estadistica2": estadistica2,
        "estadistica3": estadistica3,
        "estadistica4": estadistica4,
        "estadistica5": estadistica5
    }

    jugadores.append(jugador)
    guardar_datos()
    messagebox.showinfo("Éxito", "Jugador registrado exitosamente.")

# Función para consultar la lista de jugadores
def consultar_jugadores():
    if not jugadores:
        messagebox.showinfo("Información", "No hay jugadores registrados.")
    else:
        root = tk.Tk()
        root.title("Lista de Jugadores")

        # Crear la tabla de jugadores
        tabla = tk.Text(root, width=100, height=20)
        tabla.pack()

        # Llenar la tabla con los datos de los jugadores
        tabla.insert(tk.END, "Número, Nombre, Apellido, Posición, Edad, Peso, Altura, Estadística 1, Estadística 2, Estadística 3, Estadística 4, Estadística 5\n")
        for jugador in jugadores:
            fila = f"{jugador['numero']}, {jugador['nombre']}, {jugador['apellido']}, {jugador['posicion']}, {jugador['edad']}, {jugador['peso']}, {jugador['altura']}, {jugador['estadistica1']}, {jugador['estadistica2']}, {jugador['estadistica3']}, {jugador['estadistica4']}, {jugador['estadistica5']}\n"
            tabla.insert(tk.END, fila)

        root.mainloop()

# Función para editar un jugador
def editar_jugador():
    numero = simpledialog.askstring("Entrada", "Ingresa el número del jugador que deseas editar:")
    for jugador in jugadores:
        if jugador["numero"] == numero:
            jugador["nombre"] = simpledialog.askstring("Entrada", "Ingresa el nuevo nombre del jugador:") or jugador["nombre"]
            jugador["apellido"] = simpledialog.askstring("Entrada", "Ingresa el nuevo apellido del jugador:") or jugador["apellido"]
            jugador["posicion"] = simpledialog.askstring("Entrada", "Ingresa la nueva posición del jugador:") or jugador["posicion"]
            jugador["edad"] = int(simpledialog.askstring("Entrada", "Ingresa la nueva edad del jugador:")) or jugador["edad"]
            jugador["peso"] = float(simpledialog.askstring("Entrada", "Ingresa el nuevo peso del jugador (en kg):")) or jugador["peso"]
            jugador["altura"] = float(simpledialog.askstring("Entrada", "Ingresa la nueva altura del jugador (en cm):")) or jugador["altura"]
            jugador["estadistica1"] = float(simpledialog.askstring("Entrada", "Ingresa la nueva estadística 1 del jugador:")) or jugador["estadistica1"]
            jugador["estadistica2"] = float(simpledialog.askstring("Entrada", "Ingresa la nueva estadística 2 del jugador:")) or jugador["estadistica2"]
            jugador["estadistica3"] = float(simpledialog.askstring("Entrada", "Ingresa la nueva estadística 3 del jugador:")) or jugador["estadistica3"]
            jugador["estadistica4"] = float(simpledialog.askstring("Entrada", "Ingresa la nueva estadística 4 del jugador:")) or jugador["estadistica4"]
            jugador["estadistica5"] = float(simpledialog.askstring("Entrada", "Ingresa la nueva estadística 5 del jugador:")) or jugador["estadistica5"]
            guardar_datos()
            messagebox.showinfo("Éxito", "Jugador actualizado exitosamente.")
            return
    messagebox.showerror("Error", "No se encontró un jugador con el número proporcionado.")

# Función para eliminar un jugador
def eliminar_jugador():
    numero = simpledialog.askstring("Entrada", "Ingresa el número del jugador que deseas eliminar:")
    for i, jugador in enumerate(jugadores):
        if jugador["numero"] == numero:
            del jugadores[i]
            guardar_datos()
            messagebox.showinfo("Éxito", "Jugador eliminado exitosamente.")
            return
    messagebox.showerror("Error", "No se encontró un jugador con el número proporcionado.")

# Función principal
def main():
    cargar_datos()
    while True:
        print("Menú de Gestión de Jugadores de Futbol Americano")
        print("1. Registrar Jugador")
        print("2. Consultar Lista de Jugadores")
        print("3. Editar Jugador")
        print("4. Eliminar Jugador")
        print("5. Salir")

        opcion = input("Selecciona una opción: ")

        if opcion == "1":
            registrar_jugador()
        elif opcion == "2":
            consultar_jugadores()
        elif opcion == "3":
            editar_jugador()
        elif opcion == "4":
            eliminar_jugador()
        elif opcion == "5":
            print("¡Hasta luego!")
            break
        else:
            print("Opción no válida. Intenta de nuevo.")

if __name__ == "__main__":
    main()