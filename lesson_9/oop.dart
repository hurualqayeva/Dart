main(){
Car car1=Car('Bmw', 0);
car1.startEngine();
Bus bus=Bus('Bmw', 1920, 'Car', 0);
bus.stopEngine();
}
class Car{
String type;
int km;
Car(this.type,this.km);

void startEngine(){
  print('Engine has started');
}
void stopEngine(){
  print('Engine has stoppped');
}
}
class Bus extends Car{
String marka;
int year;
Bus(this.marka,this.year,super.type,super.km);

}
class Minik extends Car{
  String model;
  Minik(this.model,super.type,super.km);
  void carModel(){
    print('$this.model');
  }
}