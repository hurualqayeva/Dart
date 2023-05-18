main() {
  Map<String, List<int>> customers = {
    'Huru Algayeva': [100, 300],
    'John Tom': [200, 500]
  };
  BalanceChecker(customers);
}

BalanceChecker(customer) {
  for (int i = 0; i < customer.keys.toList().length; i++) {
    List list1=customer.values.toList()[i];
    print(customer.values.toList()[i]);
    var filtered1 = list1.where((e) => e > 200 ).toList();
    filtered1.forEach((element) =>print(element+10));
    print(filtered1);
  }
}
