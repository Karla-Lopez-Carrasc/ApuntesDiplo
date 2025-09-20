//: [Previous](@previous)

import Foundation

//MARK: GENERICOS
//sirven para poder definir estructuras que funcionen con diferentes tipos de datos

let something: [String] = []
let something2: [String]()
let something3: [String] = []
let somethin4: Array<Int> = []

//Stack
//Es first in last out

struct Stack {
    var items = [Int]()
    
    mutating func push(_ newItem: Int) {
        items.append(newItem)
    }
    
    mutating func pool() -> Int? {
        guard !items.isEmpty else { return nil }
        return items.removeLast()
    }
}

var inStack = Stack()
inStack.push(1)
inStack.push(2)

print(inStack.pop())
print(inStack.pop())
print(inStack.pop())



//los protocolos no tienen genéricos
//pero los protocolos tienen algo similar que es associatedType


//: [Next](@next)
