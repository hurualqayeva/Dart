import 'package:restorant_order_app/Dessert.dart';
import 'package:restorant_order_app/appetizer.dart';
import 'package:restorant_order_app/mainCourse.dart';
import 'package:restorant_order_app/orderingSystem.dart';

void main(List<String> args) {
  OrderingSystem order=OrderingSystem();
  order.addItem(Appetizer(description: 'These classic crab cakes are easy to make, as is the tangy horseradish cream.', name: 'Crab Cakes with Horseradish Cream', price: 25.6));
  order.addItem(Appetizer(description: 'Take your dip to the next level with heaps of onions slowly caramelized in butter.', name: 'Caramelized Onion Dip', price: 54.8));

  order.addItem(Dessert(isSweet: true, name: 'Chocolate mousse with cherry ripe truffles', price: 12.6));


  order.addItem(MainCourse(ingredients: 'meat ragú, ricotta and mozzarella', name: 'Italy lasagna ', price: 45.7));

order.calculateTotalCost();
order.removeItem('Caramelized Onion Dip');
order.calculateTotalCost();

}