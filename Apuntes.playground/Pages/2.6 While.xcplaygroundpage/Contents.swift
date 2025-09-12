//: [Previous](@previous)

import Foundation

//tiene dos variantes, while y reat while, ambos se van a ejecutar mientras sean true,
//while evalua condicion y luego ejecuta, repeat-while ejecuta primero y luego evalua la condicion

var moneyAvailable = 100_000

//MARK: DIFERENCIAS ENTRE LOS WHILES
//firs shoping spree
while moneyAvailable > 0 {
    let amount = 1000 * Int.random(in: 1...10)
    print("Purchase at store a for: $\(amount.formatted())")
moneyAvailable -= amount
print("Amount left: $\(moneyAvailable.formatted())")
}

repeat {
    let amount = 1000 * Int.random(in: 1...10)
    print("Purchase at store B for: $\(amount.formatted())")
    moneyAvailable -= amount
}while moneyAvailable > 0
