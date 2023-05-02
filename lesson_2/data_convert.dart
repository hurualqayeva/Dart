import 'dart:io';
import 'dart:typed_data';

main() { 
  int a = 10;
  double b = 50.5;
  a.toDouble();
  print(a.toDouble().runtimeType);
  print(b.toInt());
  print(b.toString());

  String number = '990';
  int d = int.parse(number);
  print(d.runtimeType);

  //Escape
  String text = 'Elmar\'s book';
  print(text);

  //Switch case
  int age=int.parse(stdin.readLineSync().toString());

  String fileformat = 'png';
  String eMessage = '404 Not found';
  switch (fileformat) {
    case 'jpg':
      print(eMessage);
      break;
    case 'jpeg':
      print(eMessage);
      break;
    default:
      print(eMessage);
  }
}
