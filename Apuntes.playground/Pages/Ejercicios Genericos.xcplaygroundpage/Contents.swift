//: [Previous](@previous)

import Foundation


//MARK: Generic Challenges

//MARK: First Challenge
//Create a generic `Pair` structure that holds two elements of any type (they can be different types). Implement a method to swap the two elements.

struct Pair <T, U>: CustomStringConvertible {
    var element1: T
    var element2: U
    var swapped: Bool = false
    
    var description: String {
        if swapped{
            return "Pair: \(element2), \(element1)"
        }else{
            return "Pair: \(element1), \(element2)"
        }
        
    }
    mutating func swap(){
        self.swapped = !self.swapped
    }
}

//```swift
//// usage example
var myPair = Pair(element1:"Hello", element2:1)

print(myPair) // Pair: Hello, 1
myPair.swap()
print(myPair) // Pair: 1, Hello
print("\n")
//```



//MARK: Second Challenge
//Add a `filter(_:)` method to your `Stack` structure. It should take a single argument, a closure that takes an `Element` and returns a `Bool`, and return a new `Stack<Element>` that contains any elements for which the closure returns true.
struct Stack<Element> {
    var items = [Element]()
    
    mutating func push(_ newItem: Element) {
        items.append(newItem)
    }
    
    mutating func pop() -> Element? {
        guard !items.isEmpty else { return nil }
        return items.removeLast()
    }
    
    func map<U>(_ transformer: (Element) -> (U)) -> [U] {
        var result = [U]()
        
        for item in items {
            result.append(transformer(item))
        }
        
        return result
    }
    
    func filter(_ filtro: (Element) -> Bool) -> Stack<Element> {
        var listaFinal = Stack<Element>()
        for element in self.items {
            if filtro(element) {
                listaFinal.push(element)
            }
        }
        return listaFinal
    }
    
    
}

var inStack = Stack<Int>()

inStack.push(1)
inStack.push(2)
inStack.push(3)

let filteredStack = inStack.filter { $0 == 2 }
print(filteredStack)
print("\n")


//MARK:  Third Challenge
//Write a generic function called `findAll(_:_:)` that takes an array of any type `T` that conforms to the `Equatable` protocol and a single element (also of type `T`).
//`findAll(_:_:)` should return an array of integers corresponding to every location where the element was found in the array. For example, `findAll([5,3,7,3,9], 3)` should return `[1,3]` because the item 3 exists at indices 1 and 3 in the array. Try your function with both integers and strings.

func findAll<T: Equatable>(_ array: [T], _ element: T) -> [Int] {
    var indices: [Int] = []
    for (index, value) in array.enumerated() where value == element {
        indices.append(index)
    }
    return indices
}

let enteros = [5, 3, 7, 3, 9]
let cadenas = ["hola", "adios", "chau", "adios", "hola"]

print(findAll(enteros, 3))
print(findAll(cadenas, "adios"))
print("\n")

//MARK: Fourth Challenge
//Write an extension for the `Dictionary` type that adds a method `mapValuesToArray(_:)`. This method should take a closure that transforms the values of the dictionary and return an array of the transformed values.
//```swift
//// usage example
//let dictionary = ["one": 1, "two": 2, "three": 3]
//let stringValues = dictionary.mapValuesToArray { "\($0)" }
//print(stringValues) // ["1", "2", "3"]
//```

//MARK: Fifth Challenge
//Create a protocol `ComparableItem` that requires conforming types to implement a method `isSmallerThan(_ other: Self) -> Bool`. Then, create a generic function `sortedItems<T: ComparableItem>(_: [T]) -> [T]` that sorts an array of `ComparableItem` items using the `isSmallerThan` method.
//```swift
//// usage example
//let people = [
//    Person(name: "Alice", age: 30),
//    Person(name: "Bob", age: 25),
//    Person(name: "Charlie", age: 35)
//]
//
//let sortedPeople = sortItems(people)
//for person in sortedPeople {
//    print("\(person.name): \(person.age)")
//}
//// Output:
//// Bob: 25
//// Alice: 30
//// Charlie: 35
//
//let products = [
//    Product(name: "Laptop", price: 999.99),
//    Product(name: "Smartphone", price: 699.99),
//    Product(name: "Tablet", price: 499.99)
//]
//
//let sortedProducts = sortItems(products)
//for product in sortedProducts {
//    print("\(product.name): \(product.price)")
//}
//// Output:
//// Tablet: 499.99
//// Smartphone: 699.99
//// Laptop: 999.99
//```

//MARK: Sixth Challenge (optional)
//Modify the `findAll(_:_:)` function you wrote for the third challenge to accept a generic `Collection` instead of an array.
//> [!NOTE]
//> You will need to change the return type from [Int] to an array of an associated type of the Collection protocol.





//: [Next](@next)
