//: [Previous](@previous)

import Foundation

// MARK: Ejercicio 1
//Escribe una función operacion que reciba dos enteros y un closure que indique la
//operación a realizar (+, -, *, /).
//El closure debe devolver el resultado.
//Prueba la función con diferentes operaciones.


func operacion (num1: Int, num2: Int, operation: (Double, Double) -> Double) -> Double  {
    operation (Double(num1), Double(num2))
}

print (operacion (num1: 10, num2: 20, operation: +))
print (operacion (num1: 10, num2: 20, operation: -))
print (operacion (num1: 10, num2: 20, operation: *))
print (operacion (num1: 10, num2: 20, operation: /))



// MARK: Ejercicio 2
//Crea una función esMayorQue que reciba dos enteros y un closure que devuelva true
//si el primer número es mayor que el segundo.
//Usa la función con diferentes pares de números.

func esMayorQue(_ a: Int, _ b: Int,_ comparacion: (Int, Int) -> Bool) -> Bool {
    return comparacion (a, b)
}

//print (esMayorQue(10, 20, comparacion: >))
print (esMayorQue(10, 20, {$0 > $1}))



// MARK: Ejercicio 3
//Crea una función procesarCadenas que reciba un arreglo de String y un closure que combine dos cadenas en una.
//La función debe recorrer el arreglo y combinar todos los elementos usando el closure, devolviendo el resultado final.

func procesarCadenas (_ cadenas: [String],_ resultado: (String, String) -> String) -> String{
    var cadenaFinal = ""
    for cadena in cadenas{
        cadenaFinal = resultado (cadenaFinal, cadena)
    }
    return cadenaFinal
}

func concatenar (_ a: String, _ b: String) -> String {
    if a.isEmpty {
        return b
    }
    return a + " " + b
}

let concatenarCadena = ["hola", "mundo"]

print(procesarCadenas(concatenarCadena, concatenar)) //esta sería con funcion de closure

//closure transparente
procesarCadenas(concatenarCadena) {
    if $0.isEmpty {
        return $1
    }
    return $0 + " " + $1
}


// MARK: Ejercicio 4
//Escribe una función compararStrings que reciba dos cadenas de texto y un closure
//que defina la comparación (por ejemplo: si son iguales, si una es más larga que la otra, etc.).
//El resultado debe imprimirse en consola.

func compararStrings (_ string1: String, _ string2: String, comparacion: (String, String) -> Void) -> Void {
    comparacion(string1, string2)
}

compararStrings("Hola", "holahola"){
    if $0.count > $1.count{
        print("es mayor")
    }else{
        print("es menor")
    }
}


//func cadenaMayor (_ string1: String, _ string2: String) -> Void{
//    if string1 == string2 {
  //      print ("Son iguales")
      //  return
    //}else{
      //  print ("Son diferentes")
  //  }
//}

// MARK: Ejercicio 5
//Crea una función transformarTexto que reciba un String y un closure.
//El closure debe transformar el texto (ejemplo: pasarlo a mayúsculas, agregarle un prefijo, invertirlo). Devuelve el resultado.

func transformarTexto (_ texto: String, transformacion: (String) -> String) -> String {
    return transformarTexto
}

let mayuscula = transformarTexto("Hola"){
    return $0.uppercased()
}

print( transformarTexto("Hola"){ return $0 + " mundo" })


print(mayuscula)
//: [Next](@next)
