import 'package:restorant_order_app/FoodItem.dart';

class OrderingSystem<T extends FoodItem> {
List<T> orders=[];


void addItem(T order){
orders.add(order);
}
void removeItem(String name) {
  List<FoodItem> ordersCopy = List.from(orders);
  
  for (FoodItem foodItem in ordersCopy) {
    if (foodItem.name.toLowerCase() == name.toLowerCase()) {
      orders.remove(foodItem);
    }
  }
}

void calculateTotalCost(){
  double totalcost=0;
  for (FoodItem food in orders) {
    totalcost+=food.price;
  }
print('Total cost is $totalcost');
}
}
