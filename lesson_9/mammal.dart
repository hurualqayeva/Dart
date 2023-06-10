import 'AnimalClass.dart';

class Mammal extends Animal{
  
  int AgeOfMammal;
  Mammal(this.AgeOfMammal,super.type,super.isHerbivore);
  @override
  void display(){
    if(super.isHerbivore==true){
      Herbivore='Yes';
    }
    print('Age: $AgeOfMammal type:${super.type} is Herbivore? ${Herbivore}');
  }

}

class Coala extends Mammal{
  String name;
  Coala(this.name,super.AgeOfMammal,super.type,super.isHerbivore);
  @override
   void display(){
 if(super.isHerbivore==true){
      Herbivore='Yes';
    }
    print('Name: $name Poison: $AgeOfMammal type:${super.type} is Herbivore? ${Herbivore}');
  
   }
}