import 'employee.dart';
import 'manager.dart';
import 'person.dart';

main(){
  Employee employee=Employee('Data Scientist', 'Huru', 'sdasd');
  Manager manager =Manager('Analyst', 'sdfsdf');
  manager.addToTeam(employee);
  manager.display();
  employee.display();
}