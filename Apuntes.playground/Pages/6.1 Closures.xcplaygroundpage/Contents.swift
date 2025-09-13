//: [Previous](@previous)
//MARK: Clousures
//Es un bloque que tiene funcionalidad adentro y podemos utilizar pero esta vacio el nombre


import Foundation

//funcion que nos dice si i es menor que j
func isAscending(_ i: Int, _ j: Int) -> Bool {
    return i < j
}


//MARK: Firma de la funcion

//tipo de parametro que va a tomar la funcion y el tipo de dato que va a regresar
//en este caso tenemos 2 parametros:
//(Int, Int) -> Bool

//si está vacio, la firma sería algo así
func foo(){
    
}
//() -> Void


//MARK: asignacion a una variable

let isAscendingFuntion = isAscending

//numero de voluntarios por su organizacion, se van a ordenar de menor a mayor vacante de voluntarios
var volunteerCount = [1, 3, 40, 32, 2, 53, 77, 13]
//volunteerCount.sort() //con sort no podemos definir de que forma los arregla
volunteerCount.sort(by: isAscending)

//lo mismo pero reducido
volunteerCount.sort{ (i: Int, j: Int) -> Bool in
    return i < j
}

//lo mismo pero reducido
volunteerCount.sort{ i, j in
    return i < j
}

//lo mismo pero reducido
volunteerCount.sort(by:{ $0 < $1 })


//lo mismo pero reducido
volunteerCount.sort{ $0 < $1}
volunteerCount.sort{ $0 > $1}


func format(numbers: [Double], using formatter: (Double) -> String) -> [String] {
    var result = [String]()
    
    for number in numbers {
        let transformed = formatter(number)
        result.append(transformed)
    }
    
    return result
}

let rounder: (Double) -> String = {(number: Double) -> String in
    let roundedNumber = number.rounded()
    let intRounded = Int(roundedNumber)
    return "\(intRounded)"
    
}

let prices = [12.9983, 19.9974, 11.9962, 9.99674]
format(numbers: prices, using: rounder)

//MARK: scope de un closure
func experimentWithScopes(){
    
    var numberOfTransformations = 0
    
    let rounder: (Double) -> String = {
        numberOfTransformations += 1
        return String(format: "$%0.2f", $0)
    }
    
    let otherPrice = [12.9983, 19.9974, 11.9962, 9.99674]
    let moneyFormatted = format(numbers: otherPrice, using: rounder)
    
    print(moneyFormatted)
    
}
//() -> void
experimentWithScopes()


//map, reduce y 
//: [Next](@next)
