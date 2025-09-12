
import Foundation



//We're on a roadtrip

var moneyAvailable: Float = 600
let bridgeToll: Float = 60
let tunnelTool: Float = 50
let gasPrice: Float = 525.40

//fill gas tank
guard moneyAvailable >= gasPrice else{
    fatalError("Ya no te puedes mover, estas varado") //puede ser return, break
}

moneyAvailable -= gasPrice

//Puente
guard moneyAvailable >= bridgeToll else{
    fatalError("No tuviste dinero para el puente")
}

moneyAvailable -= bridgeToll


//tunnel
guadr moneyAvailable >= tunnelTool else{ //revisar esta linea
    fatalError("No tuviste dinero para el tunel")
}

moneyAvailable -= bridgeToll

print("Llegaste a tu destino. Dinero disponible \(moneyAvailable)")



//MARK: PATTERN MACHING
let point = (-50, 0)

guard case let (x, 0) = point, x < 0 else {
    fatalError("solo acepta volores x")
}
