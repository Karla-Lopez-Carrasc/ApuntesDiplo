//MARK: FLOW CONTROL (CONTROL DE FLUJO)

//Repeat, skip o execute, exit early
//Nos ayuda a evitar que sea secuencial

//MARK: Operadores de rango: solo guarda el rango, no guarda todo ese contenido
let closedRange = -2...5 //todos
let halfClosedRange = -2..<5 //no toca el 5
let oneSidedRange = ..<5 //todo antes del 5
let onesidedRangeReversed = 5... // del 5 al .9999
let halfOpenedOneRange = ...5 //antes del 5


//MARK: if-else
let characters = ["Sam", "Dean", "Jack", "Jody", "Bobby", "Castiel", "Garth"]

var pet: String = "dog"

//if simple
if pet == "dog" {
    print("🐶")
}

//if's concatenados
pet = "rat"
if pet == "dog" && pet == "cat" {
    print("Alone")
}
if pet == "dog" || pet == "cat" {
    print("a common pet")
}
if pet == "dog"{
    print(🐶)
}else{
    print("some random")
}

//if, if-else, else
if pet == "dog" {
    
}else if pet == "cat"{
    
}else{
    
}

//Ejemplo con edades
let age: Int = 18
pet = "cat"

if age >= 18 && (pet == "dog" || pet = "cat"){ //los parentesis no son necesarios
    print("adopted")
}

let petType = if pet == "dog"{
    "canine"
}else if pet == "cat"{
    "feline"
}else {
    "other"
}

//Para versiones de iOS
if #available(iOS 26.0, *) {
    //Some cool liquid glass thing
}else{
    //fallback for older OS versions
}


//MARK: PATTERN MACHING
let point = (-50, 0)
if case let (x, 0) = point, x < 0 {
    print ("x axis, negative, estas en el lado izquierdo")
}else{
    print("some other point")
}


