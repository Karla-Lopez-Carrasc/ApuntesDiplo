//: [Previous](@previous)

import Foundation

//MARK: Protocol, Extension and Generics Exercises



//MARK: Protocol Challenges

//MARK: First Challenge
//The `printTable(_:)` function has a bug: It crashes if any of the data items are longer than the label of their column.
//Try changing the age of a person to _1,000_ to see this happen. Fix the bug.

//> [!NOTE]
//> Your solution will likely result in incorrect table formatting; that is fine for now. You will fix the formatting in the third challenge, below.

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

//func printTable(_ dataSource: TabularDataSource) {
//    var headerRow = "|"
//    var columnWidths = [Int]()
//    
//    for columnIndex in 0..<dataSource.numberOfColumns {
//        let columnLabel = dataSource.label(forColumn: columnIndex)
//        let columnHeader = " \(columnLabel) |"
//        headerRow += columnHeader
//        
//        columnWidths.append(columnHeader.count)
//    }
//    
//    print(headerRow)
//    
//    for rowIndex in 0..<dataSource.numberOfRow {
//        var output = "|"
//        for rowColumnIndex in 0..<dataSource.numberOfColumns {
//            let item = dataSource.itemForRow(row: rowIndex, column: rowColumnIndex)
//            
////            let paddingNeeded = columnWidths[rowColumnIndex] - item.count - 2
////            let padding = repeatElement(" ", count: paddingNeeded).joined(separator: "")
//            let paddingNeeded = max(0, columnWidths[rowColumnIndex] - item.count - 2)
//            let padding = String(repeating: " ", count: paddingNeeded)
//
//            output += " \(item)\(padding)|"
//            
//        }
//        print(output)
//    }
//}

printTable(department)


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

//printTable(school)
//let tabularDeparment = department as TabularDataSource
//department as Department



//MARK:  Second Challenge
//Create a new type, `BookCollection`, that conforms to `TabularDataSource`.
//Calling printTable(_:) on a book collection should show a table of books with columns for _titles_, _authors_, and _average reviews_.
 
//> [!Note]
//> Unless all the books you use have very short titles and author names, you will need to have completed the previous challenge!
struct Book {
    let title: String
    let authors: String
    let averageReviews: Double
}

struct BookCollection: TabularDataSource {
    var numberOfRow: Int { books.count }
    var numberOfColumns: Int { 3 }
    var books: [Book] = []
    
    mutating func addBook(_ book: Book) {
        books.append(book)
    }
    
    func label(forColumn column: Int) -> String {
        let label: String
        
        switch column {
        case 0: label = "Title"
        case 1: label = "Authors"
        case 2: label = "Average reviews"
        default: fatalError("Fatal error in books collection")
        }
        return label
    }
    
    func itemForRow(row: Int, column: Int) -> String {
        let book = books[row]
    
        return switch column {
        case 0: book.title
        case 1: book.authors
        case 2: "\(book.averageReviews)"
        default: fatalError("Invalid row: \(row), column: \(column) combination")
        }
    }
}


var book1 = Book(title: "titulo largo 1", authors: "30", averageReviews: 6.2)
var book2 = Book(title: "titulo largo 2", authors: "000", averageReviews: 8.2)
var book3 = Book(title: "3", authors: "50", averageReviews: 10.0)

var bookCollection: BookCollection = BookCollection()
    
bookCollection.addBook(book1)
bookCollection.addBook(book2)
bookCollection.addBook(book3)
    
printTable(bookCollection)

    
//#MARK: Third Challenge (optional)
//After you fixed the crashing bug in the first challenge, the table rows and columns were likely misaligned.
//Fix your solution to correctly align the table rows and columns. Verify that your solution does not crash with values longer than their column labels.

func printTable(_ dataSource: TabularDataSource) {
    var headerRow = "|"
    var maxWidths = [Int]()
    
    for rowColumnIndex in 0..<dataSource.numberOfColumns {
        var max: Int = dataSource.label(forColumn: rowColumnIndex).count
        for rowIndex in 0..<dataSource.numberOfRow {
            let item = dataSource.itemForRow(row: rowIndex, column: rowColumnIndex)
            if item.count > max {
                max = item.count
            }
        }
        maxWidths.append(max)
    }
    
    for columnIndex in 0..<dataSource.numberOfColumns {
        var columnLabel = dataSource.label(forColumn: columnIndex)
        let paddingNeeded = max(0, maxWidths[columnIndex] - columnLabel.count + 1)
        columnLabel += String(repeating: " ", count: paddingNeeded)

        let columnHeader = " \(columnLabel)|"
        headerRow += columnHeader
    }
    
    print(headerRow)
    
    for rowIndex in 0..<dataSource.numberOfRow {
        var output = "|"
        for rowColumnIndex in 0..<dataSource.numberOfColumns {
            let item = dataSource.itemForRow(row: rowIndex, column: rowColumnIndex)
            let paddingNeeded = max(0, maxWidths[rowColumnIndex] - item.count + 1)
            let padding = String(repeating: " ", count: paddingNeeded)

            
            output += " \(item)\(padding)|"
        }
        print(output)
    }
}
//--------------------------------------------------------------------------------------

//: [Next](@next)
