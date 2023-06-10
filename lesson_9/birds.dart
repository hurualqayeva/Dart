import 'AnimalClass.dart';

class Birds extends Animal{
  int LengthOfWing;
  Birds(this.LengthOfWing,super.type,super.isHerbivore);
  @override
   void display(){
    if(super.isHerbivore==true){
      Herbivore='Yes';
    }
    print('Length: $LengthOfWing type:${super.type} is Herbivore? ${Herbivore}');
  }

}

class Eagle extends Birds{
  String name;
  Eagle(this.name,super.LengthOfWing,super.type,super.isHerbivore);
  @override
   void display(){
 if(super.isHerbivore==true){
      Herbivore='Yes';
    }
    print('Name: $name Poison: $LengthOfWing type:${super.type} is Herbivore? ${Herbivore}');
  
   }
}