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
// 7. Closures
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

// 10. Properties
// 11. Methods
// 12. Subscripts
// 13. Inheritance
// 14. Initialization
// 15. Deinitialization
// 16. Optional Chaining
// 17. Error Handling
