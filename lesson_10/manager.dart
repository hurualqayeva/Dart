import 'employee.dart';
import 'person.dart';

class Manager extends Person{
  List<Employee> team=[];
  Manager(super.position,super.name);

    void addToTeam(Employee emp){
      this.team.add(emp);
      }
      
        @override
        void display() {
          print('${team.map((e) => e.name)} $name $email');
        }
  }
