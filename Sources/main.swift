// The Swift Programming Language

// 1.The Basics
let totalBudget: Int = 100
var currentBalance: Int = totalBudget

@MainActor
func makePurchase(itemPrice: Int) -> Int {
    if currentBalance > itemPrice {
        currentBalance -= itemPrice
        print(
            "Purchase successful! You bought an item for \(itemPrice). Your current balance is \(currentBalance)."
        )
    } else {
        print("Insufficient funds. You cannot afford this item.")
    }
    return currentBalance
}

// makePurchase(itemPrice: 10)
// makePurchase(itemPrice: 20)
// makePurchase(itemPrice: 80)

//2.Basic Operators
let freePackagePrice: Double = 0
let basicPackagePrice: Double = 9.99
let proPackagePrice: Double = 19.99
let discountForProPackage: Double = 0.2

func calculateTotalPrice(packageType: String = "free") -> Double {
    var totalPrice: Double = 0
    switch packageType {
    case "free":
        totalPrice = freePackagePrice
    case "basic":
        totalPrice = basicPackagePrice
    case "pro":
        totalPrice = proPackagePrice
        totalPrice -= totalPrice * discountForProPackage
    default:
        print("Invalid package type.")
    }
    return totalPrice
}

// print("Total price for free package: \(calculateTotalPrice(packageType: "free"))")
// print("Total price for free package: \(calculateTotalPrice(packageType: "basic"))")
// print("Total price for free package: \(calculateTotalPrice(packageType: "pro"))")

// 3. Strings and Characters
let quote = """

        The quick brown fox jumps over \t the lazy dog.
        The quick brown fox jumps over \n the lazy dog.
        The quick brown fox jumps over the lazy dog.
        The quick brown fox jumps over the lazy dog.
        The quick brown fox jumps over the lazy dog.
   
    """
let sparklingHeart = "\u{1F496}"  // 💖, Unicode scalar U+1F496

print(quote)

var name = ""
let surname = String()
name += "Ali"
print(name)

let letterArray: [Character] = ["A", "l", "i"]
for letter in letterArray {
    if letter == "i" {
        print("i found")
    } else {
        print("i not found")
    }
}
name = String(letterArray)  // The arrays converted the string

// append method
name.append("Akkaya")
print(name)

// String Interpolation
let age: Double = 25
let message = "I am \(Int(age)) years old."
print(message)

// Counting Characters
print("The length of the name is \(name.count)")
// Accessing and Modifying a String
let greeting = "Hello, world!"
greeting[greeting.startIndex]  // H
greeting[greeting.index(before: greeting.endIndex)]  // ,
greeting[greeting.index(after: greeting.startIndex)]  // e
// let index = greeting.index(greeting.startIndex, offsetBy: 3)
// greeting[index]  // l

//substring
let index = greeting.firstIndex(of: ",") ?? greeting.endIndex
let beginning = greeting[..<index]
let newString = String(beginning)
// 4. Collection Types

// 5. Control Flow
// 6. Functions
func printTimesTable(number: Int) {
    for i in 1...12 {
        print("\(number) x \(i) = \(number * i)")
    }
}

printTimesTable(number: 5)

func rollDice() -> Int {
    return Int.random(in: 1...6)
}

print("You rolled a \(rollDice())")

func getUser() -> (name: String, age: Int) {
    return (name: "Ali", age: 21)
}

let user = getUser()
print("Name: \(user.name), Age: \(user.age)")


//customizing parameter labels
func greet1(person: String, from hometown: String) -> String {
    return "Hello \(person)! Glad you could visit from \(hometown)."
}

print(greet1(person: "Ali", from: "Istanbul"))

// default parameter values

func greet2(person: String, nicely: Bool = false) -> String {
    if nicely {
        return "Hello \(person), you're looking good today!"
    } else {
        return "Hello \(person)"
    }
}

print(greet2(person: "Ali"))

// 7. Closures
let sayHello = {
    print("Hello!")
}
let sayHelloWithParameter = { (name: String) in
    print("Hello, \(name)!")
}

let team = ["Ali", "Veli", "Ayşe", "Fatma"]
let onlyA = team.filter { name in
    return name.hasPrefix("A")
}

print(onlyA)

// 8. Enumerations
// 9. Structures and Classes
// What is the difference between structures and classes?
//  Structures are value types, while classes are reference types.
// So, when you assign a structure to a new constant or variable, you get a copy of the original value.
// However, when you assign a class to a new constant or variable, you get a reference to the original value.
struct Book {
    let title: String
    let author: String
    var isAvailable: Bool

    func displayInfo() {
        print("Title: \(title), Author: \(author), Available: \(isAvailable ? "Yes" : "No")")
    }
}

class LibraryMember {
    let name: String
    var borrowedBooks: [Book]

    init(name: String, borrowedBooks: [Book] = []) {
        self.name = name
        self.borrowedBooks = borrowedBooks
    }

    func borrowBook(book: Book) {
        borrowedBooks.append(book)
        print("\(name) borrowed the book: \(book.title)")
    }

    func displayBorrowedBooks() {
        print("Books borrowed by \(name):")
        for book in borrowedBooks {
            print(book.title)
        }
    }

    
}

var book1 = Book(title: "1984", author: "George Orwell", isAvailable: true)
var book2 = Book(title: "Tutunamayanlar", author: "Oğuz Atay", isAvailable: true)

let member = LibraryMember(name: "Ali")

member.borrowBook(book: book1)
member.borrowBook(book: book2)

member.displayBorrowedBooks()

// Access Control
struct BankAccount{
    private(set) var funds = 0.0

    mutating func deposit(amount: Double){
        funds += amount
    }

    mutating func withdraw(amount: Double){
        if(funds >= amount){
            funds -= amount
            return true
        }else{
            return false
        }
    }
}

let account = BankAccount(funds: Double(100))
print(account.funds)
account.funds += 100 //error

//Classes differences
// 1. Inheritance : Classes can inherit from other classes.
// 2. Reference Types : Classes are reference types, while structures are value types.
// 3. Deinitialization : Classes have deinitializers, while structures do not.
// 4. Type Casting : Classes can be type casted, while structures cannot.
// 5. Mutability : Classes can be mutable or immutable, while structures are always mutable.

 

// 10. Properties
struct AppData {
    static let version = 1.0
    static let settingsFile = "Settings.plist"
}
// 11. Methods
// 12. Subscripts
// 13. Inheritance
// 14. Initialization
// 15. Deinitialization
// 16. Optional Chaining
// 17. Error Handling
enum PasswordError: Error {
    case empty
    case short
    case long
}

func validatePassword(_ password: String) throws -> String {
    if password.isEmpty {
        throw PasswordError.empty
    } else if password.count < 6 {
        throw PasswordError.short
    } else if password.count > 12 {
        throw PasswordError.long
    }
    return "Password is valid."
}

do{
    let password = "123"
    try validatePassword(password)
    print("Password is valid.")
} catch PasswordError.empty {
    print("Password cannot be empty.")
} catch PasswordError.short {
    print("Password is too short.")
} catch PasswordError.long {
    print("Password is too long.")
} catch {
    print("An error occurred.")
}


// General

var score:Double = 0

let player:String = "Ali"
let pi:Double = 3.14159
let isEnavled:Bool = true

var albums: [String] = ["Red", "1989", "Reputation"]
var user:[String: String] = ["first_name": "Ali", "last_name": "Akkaya"]
var books:Set<String> = ["1984", "Tutunamayanlar", "Saatleri Ayarlama Enstitüsü"]

var teams: [String]=[String]() 
var clues = [String]()

enum UIStyle {
    case light,dark,system
}

var style:UIStyle = .light

//loops
for i in 1...10 {
    print(i)
}

let files = ["me.jpg","work.txt","sophie.jpg"]

for file in files{
    if file.hasSuffix(".jpg") == false{
        continue
    }
    print("Found jpg: \(file)")
}