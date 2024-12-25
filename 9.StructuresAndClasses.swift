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
