// สร้างคลาส Book
class Book {
  String title;
  String author;

  // Constructor
  Book(this.title, this.author);

  // Getter สำหรับ title
  String get getTitle => title;

  // Setter สำหรับ title
  set setTitle(String title) => this.title = title;

  String get getAuthor => author;

 
  set setAuthor(String author) => this.author = author;
}


class Library {
  List<Book> books = [];


  void addBook(Book book) {
    books.add(book);
  }

  
  void listBooks() {
    for (var book in books) {
      print('Title: ${book.getTitle}, Author: ${book.getAuthor}');
    }
  }
}

void main() {

  var book1 = Book('The Great Gatsby', 'F. Scott Fitzgerald');
  var book2 = Book('To Kill a Mockingbird', 'Harper Lee');


  var library = Library();


  library.addBook(book1);
  library.addBook(book2);

 
  library.listBooks();
}