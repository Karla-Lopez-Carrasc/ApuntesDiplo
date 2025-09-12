


//el switch case es exhaustivo

import Foundation

var animal = "dog"

let emoji = switch animal {
case "dog": "🐶"
case "cat": "🐱"
case "mouse": "🐭"
case "bird": "🐦"
default: "🐾" //el default es para que sea exhaustivo
}

print(emoji)


//MARK: Casos compuestos: para reducir codigo
switch animal{
case "dog", "cat", "bird", "mouse" : print("common pet")
default: print("😃")
}


let grade = 9.8
switch grade {
case ...5: print("Failed") //hasta el 5
case 6..<9: print("Passed") //6 a 9
case 10...: print("Genius")
case 9: print("9 is great")
default: print("Amazing!")
}


//MARK: switch case con tuplas y wildcards
var color = (255, 255, 255)

switch color {
case(_,_, 255): print("max blue")
case(_,255,_): print("max green")
case(255,_,_): print("max red")
case(255,255, 255): print("with")
default: break
}
//solo entra al primer caso



