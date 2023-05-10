import 'dart:io';
import "dart:math";
import 'dart:convert';

main() {
  print("3 seçimdən birini daxil etməyiniz xahiş edilir:zəif, orta , güclü");
  String choice = stdin.readLineSync().toString().toLowerCase();
  PasswordGenerator(choice);
}

void PasswordGenerator(String choice) {
  if (choice.startsWith("z")) {
    int intValue = Random().nextInt(10);
    String base64UrlEncode(List<int> bytes) => base64Url.encode(bytes);
    final growableList =
        List<int>.generate(5, (intValue) => intValue * 3, growable: true);
    growableList.shuffle();
    List<String> c = base64UrlEncode(growableList)
        .split(""); 
    c.removeLast(); 
    print(c.join().substring(0,5)); 
  } else if (choice.startsWith("o")) {
    int intValue = Random().nextInt(10);
    String base64UrlEncode(List<int> bytes) => base64Url.encode(bytes);
    final growableList =
        List<int>.generate(8, (intValue) => intValue * 3, growable: true);
    growableList.shuffle();
    List<String> c = base64UrlEncode(growableList)
        .split(""); 
    c.removeLast(); 
    print(c.join().substring(0,8)); 
  } else if (choice.startsWith("g")) {
    int intValue = Random().nextInt(10);
    String base64UrlEncode(List<int> bytes) => base64Url.encode(bytes);
    final growableList =
        List<int>.generate(10, (intValue) => intValue * 3, growable: true);
    growableList.shuffle();
    List<String> c = base64UrlEncode(growableList)
        .split(""); 
    c.removeLast();
    print(c.join().substring(0,10));
  } else {
    print("Düzgün daxil edin.");
  }
}
