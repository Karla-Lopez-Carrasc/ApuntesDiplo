// MARK: Ejercicio 1
// Crea una variable que guarde un String y una constante que guarde un Int.
var variable1: String = "Variable"
let edad: Int = 1

// MARK: Ejercicio 2
// Declara variables de forma explícita para cada tipo:
// un String, un Int, un Double y un Bool.
var string: String = "Esto es un string"
var enteros: Int = 10
var doble: Double = 10.40
var booleano: Bool = true

// MARK: Ejercicio 3
// Crea dos variables con Double.
// Imprime la división del primero entre el segundo.
// Verifica si el primer número es mayor que el segundo.
var n1: Double = 3.2
var n2: Double = 2.2
print(n1 / n2)
print(n1 > n2)

// MARK: Ejercicio 4
// Declara dos variables Int.
// Crea una constante que guarde la suma de esas variables.
// Imprime el resultado.
var n3: Int = 2
var n4: Int = 3
let suma = n3 + n4
print(suma)

// MARK: Ejercicio 5
// Declara una constante con tu nombre y otra con tu apellido.
// Usa print para mostrar el mensaje:
// "Hola NOMBRE APELLIDO, ¿cómo estás?"
let miConstante = "Karla"
let apellido = "Lopez"

print("Hola \(miConstante)\(apellido), ¿cómo estás?")

// MARK: Ejercicio 6
// Crea una tupla llamada `persona` que contenga:
// - un String (nombre)
// - un Int (edad)
// - un Bool (registrado).
// Imprime el valor del nombre
var persona: (String,Int,Bool) = ("Karla",22,true)
persona.0


// MARK: Ejercicio 7
// Crea un Set con los números: 1, 2, 3, 4, 4, 2.
// Agrega un 5 al Set y observa qué sucede.
// Agrega un 1 al Set y observa qué sucede.
var miSet: Set<Int> = [1,2,3,4,4,2]
miSet.insert(5)
miSet.insert(1)
print(miSet)

// MARK: Ejercicio 8
// Crea un Array con los nombres de 5 frutas.
// Agrega una fruta nueva al Array.
// Imprime la primera y la última fruta de la lista.
var frutas: [String] = ["manzana","pera","melon","sandia","uva"]
frutas.append("platano")
print(frutas.first!)
print(frutas.last!)
frutas[0]

// MARK: Ejercicio 9
// Crea un Diccionario llamado `edades`.
// La clave será un String (nombre).
// El valor será un Int (edad).
var edades = ["Karla":22,"Pablo":25,"Ana":20]

// MARK: Ejercicio 10
// Describe las principales diferencias entre:
// - un Set
// - un Array
// - un Diccionario


