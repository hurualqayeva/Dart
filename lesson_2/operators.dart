main(){
  int x=5;
  num y=1.5;
  String z='Salam';
  print(x+y);
  print(x-y);
  print(x*y);
  print(x/y);
  print('Hesablama: ${x * y}');
  print('${z * x}');
  print('${'-' *20}');
  String ad='ElmaAD';
  print(ad.toLowerCase());
  print(5~/3);
  //!ternary operators
  x ==21 ? print('yash 21 dir') : print('uygun deyil');
  (x ==21 && y==4) ? print('yash 21 dir') : print('uygun deyil');
  int? b;
  print(b); // null olanda error gelir onun qarsisini almaq ucun int? yaziriq
  //print(!b);// o demekdir ki hech vaxt null gele bilmez bu halda error verecek.

  //literals
  String;
  'hello';
  5;
  50.5;

 }