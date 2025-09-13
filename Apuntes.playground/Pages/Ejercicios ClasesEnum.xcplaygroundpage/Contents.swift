//: [Previous](@previous)

import Foundation

//MARK: Ejercicio 1 – Clase Persona
//Crea una clase Persona con propiedades nombre y edad.
//Agrega un método presentarse() que imprima: "Hola, me llamo NOMBRE y tengo EDAD años."
//Crea 2 instancias y llama al método en ambas.

class Persona{
    var nombre: String
    var edad: Int
    
    init(nombre: String, edad: Int) {
        self.nombre = nombre
        self.edad = edad
    }
    
    func presentarse() -> Void {
        print("Hola, me llamo \(nombre) y tengo \(edad) años.")
    }
}

let persona1 = Persona(nombre: "Karla", edad: 20)
let persona2 = Persona(nombre: "Ana", edad: 25)

persona1.presentarse()
persona2.presentarse()



//⸻
// MARK: Ejercicio 2 – Clase Coche con Enum
//Crea una clase Coche con propiedades marca y modelo.
//Define un enum EstadoCoche con valores .encendido, .apagado.
//Agrega métodos encender() y apagar() que cambien el estado e impriman un mensaje.

class Coche {
    var marca: String
    var modelo: String
    var estadoCoche: String = ""
    
    init(marca: String, modelo: String) {
        self.marca = marca
        self.modelo = modelo
    }
    
    func encender() -> Void {
        estadoCoche = "encendido"
        print("El coche ha sido encendido.")
    }
    
    func apagar() -> Void {
        estadoCoche = "apagado"
        print("El coche ha sido apagado.")
    }
}

enum EstadoCoche {
    case encendido
    case apagado
}

let miCoche = Coche(marca: "Toyota", modelo: "Corolla")
miCoche.encender()
print(miCoche.estadoCoche)
miCoche.apagar()
print(miCoche.estadoCoche)




//⸻
// MARK: Ejercicio 3 – Inventario de Productos
//Crea una clase Producto con propiedades nombre y precio.
//Crea una clase Inventario que guarde un arreglo de productos y tenga un método
//productoMasCaro() que devuelva el producto más caro.

class Producto {
    var nombre: String
    var precio: Double
}

class Inventario {
    
}


//⸻
// MARK: Ejercicio 4 – Clase Estudiante con Calificaciones
//Crea una clase Estudiante con propiedades nombre y calificaciones: [Int].
//Agrega un método promedio() que devuelva el promedio de las calificaciones.
//Prueba con al menos 2 estudiantes.
//⸻
// MARK: Ejercicio 5 – Enum Días de la Semana
//Declara un enum DiaSemana con los casos: lunes a domingo.
//Crea una clase Agenda con un diccionario [DiaSemana: String] para asignar actividades.
//Agrega un método mostrarActividad(dia:) que devuelva la actividad del día recibido.
//⸻
// MARK: Ejercicio 6 – Clase CuentaBancaria
//Crea una clase CuentaBancaria con propiedades titular y saldo.
//Agrega métodos depositar(monto:) y retirar(monto:).
//Valida que no se pueda retirar más de lo que hay en la cuenta.
//⸻
// MARK: Ejercicio 7 – Juego con Enum
//Crea un enum Movimiento con casos .arriba, .abajo, .izquierda, .derecha.
//Crea una clase Jugador con propiedades nombre y posicion: (x: Int, y: Int).
//Agrega un método mover(_:) que cambie la posición según el movimiento.
//⸻
// MARK: Ejercicio 8 – Biblioteca con Clases
//Crea una clase Libro con propiedades titulo y autor.
//Crea una clase Biblioteca con un arreglo de libros y un método buscarPorAutor(_:) que
//devuelva todos los libros de un autor específico.
//⸻
// MARK: Ejercicio 9 – Enum Nivel y Clase VideoJuego
//Declara un enum Nivel con casos .facil, .medio, .dificil.
//Crea una clase VideoJuego con propiedades titulo y nivel.
//Agrega un método descripcion() que imprima "El juego TITULO está en nivel NIVEL".
//⸻
// MARK: Ejercicio 10 – Clase Restaurante
//Crea una clase Platillo con propiedades nombre y precio.
//Crea una clase Restaurante con una lista de platillos y un método ordenarPlatillo(nombre:) que
//busque el platillo e imprima su precio.
//Si no existe, imprime "No tenemos ese platillo."

//: [Next](@next)
