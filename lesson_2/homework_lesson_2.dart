import 'dart:io';

main() {
  ///Task 1:İstifadəçidən adını və yaşını daxil etməyi tələb edən proqram yaradın.
  ///100 yaşının neçə il sonra tamam olduğunu bildirən bir mesaj çap edin.
  String name = stdin.readLineSync().toString();
  int age = int.parse(stdin.readLineSync().toString());
  int diff = 100 - age;
  print('$name  $diff il sonra 100 yaşlı olacaq.');

  // Task 2: İstifadəçidən ən azı 5 sözdən ibarət cümlə daxil etməyi tələb edən proqram yaradın.
  // Cümləni sözlərini əksinə sıralayan bir mesaj çap edin.
  // Nümunə: dart programlaşdırma dilidir => dilidir proqramlaşdırma dart
  String text = stdin.readLineSync().toString();
  if (text.split(' ').length >= 5) {
    print(text.split(' ').reversed.join(' '));
  }
  else{
    print("Mətndəki söz sayı 5-dən azdır.");
  }
}
