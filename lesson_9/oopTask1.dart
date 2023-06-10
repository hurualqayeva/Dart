// ! Animal super class
// ! Birds, Mammals, Reptile
// ! display func. hamisina aiddir.
// ! her birinin ozunun fildleri var

/// Mammal- novu, yasi
/// Birds qanad uzunlugu, novunu,
/// Reptile- novu, zeherli olub olmadigi(bool)

main(){
Animal animal1=Animal('Cat');
animal1.display();
Mammal mammal1 =Mammal(120, 'Monkey');
mammal1.display();
Birds birds1=Birds(24, 'Parrot');
birds1.display();
Reptile reptile= Reptile(true, 'fish');
reptile.display();
}
class Animal{
String type;
Animal(this.type);


void display(){
  print('Animal type: $type');

}
}

class Mammal extends Animal{
  
  int AgeOfMammal;
  Mammal(this.AgeOfMammal,super.type);
  @override
  void display(){
    print('Age: $AgeOfMammal type:${super.type}');
  }

}

class Birds extends Animal{
  int LengthOfWing;
  Birds(this.LengthOfWing,super.type);
  @override
   void display(){
    print('Length: $LengthOfWing type:${super.type}');
  }

}
class Reptile extends Animal{
  bool isPoison;
  Reptile(this.isPoison,super.type);
@override
   void display(){
    print('Poison: $isPoison type:${super.type}');
  }
}

