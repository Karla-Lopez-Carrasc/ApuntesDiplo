//: [Previous](@previous)

import Foundation

//MARK: CICLOS


let characters = ["sam", "dean", "jack", "jody", "bobby"]

for character in characters {
    print(character + " is a character from a series")
}


//MARK: con diccionarios
let pokemonList = ["Fire": "Charmander", "Water": "Mudkip", "Grass": "Squirtle", "Electric": "Pikachu"]
for pokemon in pokemonList{
    print(pokemon.key + " is of a type" + pokemon.value)
}


//MARK: CON NUMEROS

let numbers = 1...10

for number in numbers where number % 2 == 0 {
    print(number)
}

//MARK: CON WILDCARD
for _ in numbers{
    print("hello")
}


//MARK: PARA DETENER EL CICLO
//continue: detiene ahí y fuerza al siguiente ciclo
//break: cancela el ciclo completamente


//coordenadas
let coordinate = [(0,-5), (4,3), (0,9)]

for case let (0, y) in coordinate{
    print("(y) id on the x axis")
}
//case es para patrones
