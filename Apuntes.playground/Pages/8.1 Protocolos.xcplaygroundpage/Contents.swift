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

import Foundation


// MAP
// Filter
// Reduce


let myArray = [1, 2, 3, 4, 5, 6]

let transformedArray = myArray.map { "\($0)" }

//print(transformedArray)

let fileteredArray = myArray.filter { value in
    return value % 2 == 0
}

//print(fileteredArray)


// Protocolos

// Radio Protocol
// - changeVolume
// - changeSong
// - connectPhone

//let data = [
//    ["Eva", "30", "6"],
//    ["Salem", "40", "18"],
//    ["Andres", "50", "20"]
//]

//let headers = [
//    "Emplyee name",
//    "Age",
//    "Years of experience"
//]

protocol TabularDataSource {
    var numberOfRow: Int { get }
    var numberOfColumns: Int { get }
    
    func label(forColumn column: Int) -> String
    func itemForRow(row: Int, column: Int) -> String
}

struct Person {
    let name: String
    let age: Int
    let yearsOfExperience: Int
}

struct Department: TabularDataSource {
    var numberOfRow: Int { people.count }
    
    var numberOfColumns: Int { 3 }
    
    func label(forColumn column: Int) -> String {
        let label: String
        
        switch column {
        case 0: label = "Employee name"
        case 1: label = "Age"
        case 2: label = "Years of experience"
        default: fatalError("A department should only have 3 columns")
        }
        
        return label
    }
    
    func itemForRow(row: Int, column: Int) -> String {
        let person = people[row]
        let item: String
        
        switch column {
        case 0: item = person.name
        case 1: item = "🙊\(person.age)"
        case 2: item = "\(person.yearsOfExperience)"
        default: fatalError("Invalid row: \(row), column: \(column) combination")
        }
        
        return item
    }
    
    let name: String
    var people: [Person] = []
    init(name: String) {
        self.name = name
    }
    
    mutating func add(_ person: Person) {
        people.append(person)
    }
}

var department = Department(name: "Engineering")
department.add(Person(name: "Eva", age: 30, yearsOfExperience: 6))
department.add(Person(name: "Salem", age: 40, yearsOfExperience: 8))
department.add(Person(name: "Andres", age: 50, yearsOfExperience: 10))

func printTable(_ dataSource: TabularDataSource) {
    var headerRow = "|"
    var columnWidths = [Int]()
    
    for columnIndex in 0..<dataSource.numberOfColumns {
        let columnLabel = dataSource.label(forColumn: columnIndex)
        let columnHeader = " \(columnLabel) |"
        headerRow += columnHeader
        
        columnWidths.append(columnHeader.count)
    }
    
    print(headerRow)
    
    for rowIndex in 0..<dataSource.numberOfRow {
        var output = "|"
        for rowColumnIndex in 0..<dataSource.numberOfColumns {
            let item = dataSource.itemForRow(row: rowIndex, column: rowColumnIndex)
            let paddingNeeded = columnWidths[rowColumnIndex] - item.count - 2
            let padding = repeatElement(" ", count: paddingNeeded).joined(separator: "")
            
            output += " \(item)\(padding)|"
        }
        print(output)
    }
}



printTable(department)


struct School: TabularDataSource {
    var numberOfRow: Int { 10 }
    
    var numberOfColumns: Int { 2 }
    
    func label(forColumn column: Int) -> String {
        if column < 1 {
            return "Column A"
        } else {
            return "Column B"
        }
    }
    
    func itemForRow(row: Int, column: Int) -> String {
        return "test"
    }
    
    
}

let school = School()
//
printTable(school)
let tabularDeparment = department as TabularDataSource
//let optionalDepartment = school is TabularDataSource
department as Department






//: [Next](@next)
