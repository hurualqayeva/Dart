import 'dart:io';

main(){
  int number=int.parse(stdin.readLineSync().toString());
  for( int i=1;i<=number;i++){
    if(number%i==0){
      print(i);
    }
  }
}