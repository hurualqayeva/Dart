import 'package:renting_car/car.dart';
import 'package:renting_car/rentable.dart';
import 'package:renting_car/vehicle.dart';

void main(List<String> args) {
  Car car =Car(brand: 'Mustang', model: 'Ford', type: VehicleType.Sedan, passangerCapacity: 4);
  car.rent();
  car.calculateDiscountedPrice(40);
  car.returnVehicle();
}
