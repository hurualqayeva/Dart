// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:renting_car/vehicle.dart';

class Car extends Vehicle with Discountable {
  double passangerCapacity;
  Car({
    required this.passangerCapacity, required super.brand, required super.model, required super.type,
  });

  @override
  calculateDiscountedPrice(discount) {
    Vehicle.price-=(Vehicle.price*discount/100);
    print('Discounted price: ${Vehicle.price}');
  }

}

mixin Discountable{
  calculateDiscountedPrice(parametr);

}