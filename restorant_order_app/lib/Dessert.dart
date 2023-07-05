// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:restorant_order_app/FoodItem.dart';

class Dessert extends FoodItem {
  bool isSweet;
  Dessert({
    required this.isSweet, required super.name, required super.price,
  });
  
}
