
import 'AnimalClass.dart';

class Reptile extends Animal{
  bool isPoison;
   
  Reptile(this.isPoison,super.type,super.isHerbivore);
@override
   void display(){
    if(super.isHerbivore==true){
      Herbivore='Yes';
    }
    print('Poison: $isPoison type:${super.type} is Herbivore? ${Herbivore}');
  }
}

class Crocodile extends Reptile{
  String name;
  Crocodile(this.name,super.isPoison,super.type,super.isHerbivore);
  @override
   void display(){
 if(super.isHerbivore==true){
      Herbivore='Yes';
    }
    print('Name: $name Poison: $isPoison type:${super.type} is Herbivore? ${Herbivore}');
  
   }
}