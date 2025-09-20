//: [Previous](@previous)

import Foundation
import UIKit

//MARK: map
//toma arreglo, le aplica una transofrmacion y nos regresa el arreglo del mismo tamaño

//let myArray = [1,2,3,4,5,6] //arreglo de enteros
//let transformedArray = myArray.map ({
//    return "\($0)" //arreglos de string
//})
//print(transformedArray)


//MARK: filter
//de un arreglo a otro arreglo del mismo tamaño o menor

//let filteredArray = myArray.filter { value in
//    return value %2 == 0
//}
//print(filteredArray)


//MARK: reduce
//toma secuencia y le pasa una transformacion por cada elemento del arreglo y nos reduce a un elemento






//MARK: PROTOCOLOS

//Nos permiten definir un listado de metodos y propiedades que debe tener un tipo de dato
//Como si fuera un contrato que define reglas
//cuando un tipo de dato cumple lo que pide el protocolo se dice que "lo conforma"

//Ejemplo de protocolo de un radio
//- change Volumen
//- changeSong
//- connectPhone

//Ejemplo 2

let data = [
    ["Eva", "30", "6"],
    ["Salem", "40", "18"],
    ["Andres", "50","20"]
]

let headers = [
    "Emplyee name",
    "Age",
    "Years of experience"
]

struct Person {
    let name: String
    let age: Int
    let yersOfExperiencie: Int
}

struct Departament {
    let name: String
    let people: [Person] = []
    init (name: String){
        self.name = name
    }
    
    mutating func add(_person: Person){
        people.append(person)
    }
}

var departament = Departament(name: "Engineering")
departament.add(Person(name: "Eva", age: 30, yersOfExperiencie: 6))
departament.add(Person(name: "Salem", age: 40, yersOfExperiencie: 18))
departament.add(name: "Andres", age: 50, yersOfExperience: 10))



func printTable(_ data: [[String]],withColumNames columLabels: [String]){
    var headerRow = "|"
    var columWidths: [Int]()
    
    for columLabel in columLabels {
        let columnHeader = "\(columLabel) |"
        headerRow += columnHeader
        
        columWiths.append(columnHeader.count)
    }
    print(headerRow)
    
    for row in data{
        var output = "|"
        
        for (index,item) in row.enumerated() {
            let paddingNeeded = columWiths[index] - item.count -2
            let padding = repeatElement(" ", count: paddingNeeded).joined(separator: "")
            
            output += " \(item)\(padding) |"
        }
        print(output)
    }
    
    
}


printTable(data, withColumNames: headers)




//: [Next](@next)
