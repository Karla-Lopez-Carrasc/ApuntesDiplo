//: [Previous](@previous)
//Sábado 13 de Septiembre
import Foundation

//MARK: CLASES

class MediaItem{
    let id: UUID
    var title: String
    
    init(title: String){
        self.id = UUID()
        self.title = title
    }
    
//    required init(){
//        self.id = UUID()
//        self.title = ""
//    }
}


class Video: MediaItem {
    let duration
    var isHD: Bool
    
    init(title: String, duration: TimeInterval, hd: Bool =
         false) {
        self.duration = duration
        self.isHD = hd
        super.init(title: title)
    }
    
    covenience init (HDVideo title: String, duration){
        
    }
}

let video = Video(title: "my video", duration: 0.2)
let hdVideo = Video(HDVideo: "HDVidew", duration: 0.2)
let emptyVideo = Video()


class Image: MediaItem{
    var width: Int
    var heigth: Int
    init(title: String, width: Int, height: Int){
        self.width = width
        self.heigth = height
        super.init(title: title)
    }
}

//El 25 se puede modificar porque profilePicture esta apuntando a una memoria y el 25 solo es el contenido de lo que esta en esa memoria
let profilePicture = Image(title: "pf pic", width: 10, heigth: 10)

profilePicture.width = 25
profilePicture.width

//Aqui no se puede porque en esta se esta intentando cambiar el lugar a donde apunta esa memoria
let image2 = Image(title: "", width: 83, heigth: 37)
//profilePicture = image2

//Ambas cambian al mismo tiempo, la copia esta apuntando al apuntador que tiene profilePicture, entonces cambian ambas
let profilePictureCopy = profilePicture
profilePictureCopy.heigth = 37287
profilePicture.heigth
profilePictureCopy.heigth

//para saber si se trata de la misma instancia
profilePicture === profilePictureCopy //operador
profilePicture === image2

//MARK: FINAL
//final, es la palabrta reservada para indicar que esta clase ya no va a poder heredar mas
final class PremiumVideo: Video{
    var drmToken: String = ""
    var ads: [String] = []
    
//Para darles variables se usa get y set
    override var isHD: Bool {
        get{
            return true
        }
        set{}
    }
    
    required init(){
        super.init()
    }
    
    override func display() -> String{
        super.display() + "Video"
    }
//    para desinicializar
    deinit { /*cleanup*/ }
}


let premVideo = PremiumVideo()
premVideo.isHD = false
premVideo.isHD
premVideo.isHD = true
premVideo.isHD


//MARK: ARC
//Reference counting
//Se puede tener referencias fuertes y débiles
//Cuando el contador de referencias llegue a 0, va a querer desalojar la memoria
//CONTEO DE REFERENCIAS:
//weak ref -> ARC + 0
//strong ref -> ARC + 1 (todos son strong a menos de que se le indique que es weak)

class Author {
    let name: String
    weak var library: Library? //con el weak le dicimos que la referencia a library va a ser debil
    
    init(name: String, library: Library? = nil){
        self.name = name
        sself.library = library
    }
}

class Library{
    let id = UUID()
    var curator: Author
    
    init(curator: Author){
        self.curator = curator
    }
}


let author = Author(name: "Grecia")
let library = Library(curator : author)
author.library


class Repeater{
    var value: String
    
    init(value: String) {
        self.value = value
    }
    
    func format(using formatter: (Int) -> String) -> StringClass {
        var formattedString = ""
        for (index, _) in value.enumerated(){
            formattedString.append(formatter(index))
        }
        return StringClass(formattedString)
    }
}

class MyUserController {
    var userName = StringClass(userName)
}

func emojifyUserName(){
    userName = userName.format(using: {number in
        
    })
}

func emojiBy(number: Int) -> String {
    return switch number 
}
//: [Next](@next)
