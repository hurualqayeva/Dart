// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:restorant_order_app/FoodItem.dart';

class Appetizer extends FoodItem {
  String description;
  Appetizer({
    required this.description, required super.name, required super.price,
  });
}
