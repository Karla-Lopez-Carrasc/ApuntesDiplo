//: [Previous](@previous)

import UIKit

//MARK: Enumeradores
//se usan para cosas muy definidas

enum TrafficLight { //enum es palabra reservada
    case red, yellow, green //estas ya son instancias definidas
    //se pueden poner así los case o individuales:
    //case red
    //case yellow
    //case green
}

//para definir nuestros enum (dos diferentes formas de hacerlo)
let currentLight = TrafficLight.yellow
let anotherLight: TrafficLight = .red


switch currentLight {
case .green: print("green")
case .red: print("red")
case .yellow: print("yellow")
}


enum AnimalType: String {
    //case mammal, bird, reptile //sin especificar
    case mammal = "mamifero"
    case bird = "ave"
    case reptile = "reptil"
    
//    init?(string: String) { //inicializacion opcional
//        
//    }
}

//para acceder al rol value
let animal = AnimalType.bird.rawValue
let usersAnimalNil = AnimalType(rawValue: "Ave") //es key sensitive
let usersAnimal = AnimalType(rawValue: "Ave") //es key sensitive

//Self se refiere al tipo de dato
//self se refiere a lo que creamos, como los case

//MARK: VALORES ASOCIADOS
//PROPIEDADES COMPUTADAS?
enum ContactMethod {
    case email(String)
    case phone(countryCode : Int, number: String)
    case postal(address:  String, zip: String)
    
    func description() -> String {
        return switch self {
        case let .email(address): address
        case let .phone(countryCode, number): "+\(countryCode) \(number)"
        case let .postal(street, zip): "st \(street), \(zip)"
        }
    }
}

let contact = ContactMethod.email("lol@gmail.com")
let youtContact = ContactMethod.email("another@g.com")
contact.description()

enum Pet {
    case dog, cat, parrot, turtle
    
    var animalType: AnimalType{
        switch self{
        case .cat, .dog: .mammal
        case .parrot: .bird
        case .turtle: .reptile
        }
    }
}




enum Metrics{
    static let maxTries = 3
    
    static func convert(fh: Double) {
        
    }
}

struct Strcutre {
    static let maxTries = 4
}

class AClass {
    static func convert(fh. Double){
        
    }
    class func convert(celsius: Double){
        
    }
}

Metrics.maxTries
Strcutre.maxTries
//: [Next](@next)
