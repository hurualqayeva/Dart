
import 'person.dart';

class Employee extends Person{
  String position;
  Employee(this.position,super.name,super.email);
  
  @override
  void display() {
    print('$position $email $name');
  }

}