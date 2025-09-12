import UIKit

var greeting = "Hello, playground"

//para comentar se presiona command+ ?
// para comentar
/*
 o de esta forma
 */


//MARK: VARIABLES
//palabra reservada para una variable
greeting = "adios"

//para nombrar variables, entre mas explicitas mejor. No se usan _
var miVariableUno = "mi variable"
var numeroUno = 3, numeroDos = 2, numeroTres = 4 //se pueden declarar en la misma linea



//MARK: CONSTANTES
//una variable va a consumir más memoria que una constante
let miConstanteUno = "mi constante"
//miConstanteUno = "Adios" //Error


//Tipos de datos
    //inferencia y no inferencia de tipo
var texto: String = "Hola" //de la variable texto, tipo de dato
texto = "4"

var entero: Int = 10
var doble: Double = 10.5
var flotante: Float = 10.5
var booleano: Bool = true //true o false, se puede poner 1 y 0 pero no se suele ocupar




//MARK: NUMEROS

let maxValueInt = Int.max
let minValueInt = Int.min

let maxValueUInt = UInt.max
let minValueUInt = UInt.max

var n1 = 0.1
var n2 = 0.2
var n3: Double = 3 //se le agregó el doble para castearlo

let suma = n1 + n2
print(suma) //muestra en la consola lo que estamops imprimiendo

var myVariable = 0.2 // es float o doble? Asigna dobles en automático

n1 + n3 //se le tuvo que poner el Double en la creacion de variable para que sirviera



//MARK: Operadores de comparación
n1 > n2 //mayor que
n1 < n2 //menor que
n1 >= n2 //mayor o igual que
n1 <= n2 //menor o igual que
n1 == n2 //igual que (COMPARACION)
n1 != n2 //diferente que
//n1 === n2 //igual que, a profundo nivel



//MARK: STRINGS
let cadena1 = "Buenos"
let cadena2: String = "Dias"
let nombre = "Karla"

//Formas de hacer interpolaciones de strings
cadena1 + cadena2 //forma 1. solo para playground

//caracter de escape (para meter valores a un string)
let mensaje = "Buenos dias \(nombre)"
let mensaje2 = "\(cadena1)      \(cadena2) \(nombre)"

print(mensaje)

mensaje.isEmpty //para saber si una cadena tiene algo

//esto no se hace
mensaje.count == 0

var 😆 = 0
var 😂 = 3

😆 + 😂


//MARK: ARREGLO (ARRAY)
//Colecciones ordenadas que pueden repertise

var miArreglo = [1,2,3,4] //los indices se cuentas empezando en 0
var miArreglo2: [Int] = [ 1,2,3,4] //no inferencia de dato para un arreglo
var miArreglo3: [Int] = []

var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
miArreglo[2] //el numero es el indice que estamos ocupandpo
 
var miArreglo4: [String] = ["hola","adios"]

//agregar (agrega al ultimo o al inicio)
miArreglo4.append("adios")
miArreglo4 += ["adios", "holi", "bye"]

//modificar
miArreglo4[0] = "iOS"
miArreglo4

//insertar
miArreglo4.insert("Swift", at: 1)
miArreglo4

//Remove
miArreglo4.remove(at: 1)
miArreglo4.removeLast()
miArreglo4

miArreglo4.count
miArreglo4.isEmpty

//sets
var miSet = Set<Int>()
var miSet2 = Set([1.34 ])
var miset3: Set<String> = ["Rock", "Classical", "Hip Hop"]
//atmiseta3-------------

//miSet3.insert)(

//mi insert3.remove("Rock")



//MARK: DICCIONARIO
// var MiDiccionario: [String: Int] = ["apple": 2, "banana": 4, "orange"] : 4]
var airports: [String: String] = [
    "AICM": "BENITO JUAREZ",
    "AIFA": "DUBLIN"
]

var MiDiccionario2 : [String:String] = [:]

//obtener valor
airports["AICM"]

//moficar valor
//["AIFA"] = [EDOMEX]

airports

//Remover
airports["AIFA"] = nil
airports.removeValue(forKey: "AIFA")




//MARK: TUPLAS

var color = ("#ff000", "Rojo")
var tupla: (String,Int) = ("Dante Sanchez",8)
var tupla2 = (nombre:"Dante Sanchez",8)

tupla.0 //el 0 es el numero del contenido de la tupla
tupla2.nombre
