// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:renting_car/rentable.dart';

class Vehicle implements Rentable {
  
  static double price=200;
  String brand;
  String model;
  Enum type;
  Vehicle({
    required this.brand,
    required this.model,
    required this.type,
  });
  
  @override
 rent() {
   print('Vehicle rented: $model');
  print('Original price: $price');

  }
  
  @override
  returnVehicle() {
    print('Vehicle returned: $model');
  }
  
}
