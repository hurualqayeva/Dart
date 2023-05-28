main(){

  //! List ichinde bir setrlik if yazilisinin numunesi
  int x=4;
  List list1=[1,2,3,4,5,x>2 ? 15 :5];
  print(list1);


  String name='1';
  int age=int.parse(name);
  print(int.parse(name).runtimeType);
  print(age.runtimeType);


  
}