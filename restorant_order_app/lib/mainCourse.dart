// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:restorant_order_app/FoodItem.dart';

class MainCourse extends FoodItem {
  String ingredients;
  MainCourse({
    required this.ingredients, required super.name, required super.price,
  });

}
