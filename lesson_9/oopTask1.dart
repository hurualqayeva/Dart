// ! Animal super class
// ! Birds, Mammals, Reptile
// ! display func. hamisina aiddir.
// ! her birinin ozunun fildleri var

import 'AnimalClass.dart';
import 'birds.dart';
import 'mammal.dart';
import 'reptile.dart';

/// Mammal- novu, yasi
/// Birds qanad uzunlugu, novunu,
/// Reptile- novu, zeherli olub olmadigi(bool)

main(){
Animal animal1=Animal('Cat',false);
animal1.display();
Mammal mammal1 =Mammal(120, 'Monkey',false);
mammal1.display();
Birds birds1=Birds(24, 'Parrot',false);
birds1.display();
Reptile reptile= Reptile(true, 'fish',true);
reptile.display();
Crocodile crocodile= Crocodile('Crocodilians', true, 'Reptile', true);
crocodile.display();
Eagle eagle =Eagle('Eagle', 15, 'bird', false);
eagle.display();
Coala coala=Coala('Coala', 23, 'Mammal', true);
coala.display();
}





