//: [Previous](@previous)

import Foundation

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
department.add(Person(name: "Salem", age: 1000, yearsOfExperience: 8))
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
    
            let paddingNeeded = max(0, columnWidths[rowColumnIndex] - item.count - 2)
            let padding = String(repeating: " ", count: paddingNeeded)

            output += " \(item)\(padding)|"
            
        }
        print(output)
    }
}

//printTable(department)


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




//MARK: Extension Challenges


//MARK: First Challenge
//You made the `Department` type conform to the `CustomStringConvertible` protocol. Refactor your playground from that chapter to move `CustomStringConvertible` conformance into an extension.
extension Department: CustomStringConvertible {
    var description: String {
        return "\(name) \n"
    }
}

print(department)


//MARK: Second Challenge
//Extend the `Array` type to add a method `secondElement()` that returns the second element of the array if it exists, or `nil` if the array has fewer than two elements. Additionally, add a computed property `isNotEmpty` that returns `true` if the array is not empty, and `false` otherwise.

extension Array {
    func secondElement() -> Element? {
        if self.count <= 1 {
            return nil
        } else{
            return self[1]
        }
    }
    
    func isNotEmpty() -> Bool {
        return self.count != 0
    }
    
}

//```swift
// usage example
let numbers = [1, 2, 3, 4]
if let second = numbers.secondElement() {
    print("The second element is \(second)")
} else {
    print("The array does not have a second element")
}

// The second element is 2
let emptyArray: [Int] = []
print("Is the array not empty? \(emptyArray.isNotEmpty()) \n")
// Is the array not empty? false
//```



//MARK: Third Challenge
//Give the `Int` type a nested `enum` with cases **even** and **odd**.
//Also give `Int` a property of that type to correctly report whether an integer is even or odd.

extension Int{
    enum ParImpar {
        case even
        case odd
        
    }
    
    var evenOrOdd: ParImpar {
        if self.isMultiple(of: 2) {
            return .even
        } else {
            return .odd
        }
    }
}



//```swift
//let myInt = 2
//print(myInt.evenOrOdd) // even par
//print(7.evenOrOdd) // odd impar
//```




//MARK: Fourth Challenge (optional)
//Update the `Int` a nested `enum` with cases **even** and **odd** to conform to `CustomStringConvertible` so it has a custom print description.
//Make the protocol conformance of the enum in an extension
extension Int.ParImpar: CustomStringConvertible {
    var description: String {
        return switch self {
            case .even:
                "Hey, I'm an even number"
            case .odd:
                "Oh no, I'm an odd number"
        }
    }
}


////```swift
let myInt = 2
print(myInt.evenOrOdd) // Hey, I'm an even number
print(7.evenOrOdd) // Oh no, I'm an odd number
////```




//--------------------------------------------------------------------------------------------

//: [Next](@next)
