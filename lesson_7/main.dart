import 'Book.dart';
import 'Library.dart';

main(){
 
  Book book1 =Book('Oliver Twist', 'Charles Dickens', '1838',15,1);
  Book book2 =Book('Teenager', 'Dostayevski', '1916',25,2);

  Library library=Library();
 
  library.addBook(book1);
  library.addBook(book2);
  library.displayBook();
  library.searchByTitle();
}