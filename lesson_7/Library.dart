import 'dart:io';

import 'Book.dart';

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
  }

  void searchByTitle() {
    print('-' * 100);
    print(
        'Select the number for what do you want to search by/n 1)Title\n 2)Author\n 3)Publish Year\n 4)Price\n 5)Genre');

    int? choice = int.parse(stdin.readLineSync().toString());
    switch (choice) {
      case 1:
        String titleSearch = stdin.readLineSync().toString().toLowerCase();
        for (var element in books) {
          if (element.title.toLowerCase().contains(titleSearch)) {
            print(
                'book for the given \n title: ${element.title}\n author: ${element.author}\n Publish Year: ${element.publicationYear} \n Price: ${element.price}');
          }
        }
        break;
      case 2:
        String titleSearch = stdin.readLineSync().toString().toLowerCase();
        for (var element in books) {
          if (element.author.toLowerCase().contains(titleSearch)) {
            print(
                'book for the given \n title: ${element.title}\n author: ${element.author}\n Publish Year: ${element.publicationYear} \n Price: ${element.price}');
          }
        }
        break;
      case 3:
        String titleSearch = stdin.readLineSync().toString().toLowerCase();
        for (var element in books) {
          if (element.publicationYear.toLowerCase().contains(titleSearch)) {
            print(
                'book for the given \n title: ${element.title}\n author: ${element.author}\n Publish Year: ${element.publicationYear} \n Price: ${element.price}');
          }
        }
        break;
      case 4:
      int min=int.parse(stdin.readLineSync().toString().toLowerCase());
      int max=int.parse(stdin.readLineSync().toString().toLowerCase());

      for (var element in books) {
if(element.price>=min && element.price<=max){
 print(
      'book for the given \n title: ${element.title}\n author: ${element.author}\n Publish Year: ${element.publicationYear} \n Price: ${element.price}\n Genre:${genres[element.genre]}');
          
}
     }
        break;
      case 5:
print('The genres that we have in our stock: ${genres}');
      int titleSearch=int.parse(stdin.readLineSync().toString().toLowerCase());
 for (var element in books) {
          if (genres[titleSearch]==genres[element.genre]) {
            print(
                'book for the given \n title: ${element.title}\n author: ${element.author}\n Publish Year: ${element.publicationYear} \n Price: ${element.price} \n Genre:${genres[element.genre]}');
          }
        }
        break;
      default:
    }
  }

  void displayBook() {
    for (var element in books) {
      print(
          'All books:\n title ${element.title}\n author ${element.author}\n Publish Year ${element.publicationYear}\n ${genres[element.genre]}');
    }
  }
}
