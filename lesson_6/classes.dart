import 'CartClass.dart';
main() {
//   Task:
// Classlardan istifadə edərək bank hesabı yaradın.
// Classın daxilində hesab nömrəsi,  hesabın sahibinin adı və hesabın balansı saxlanılmalıdı
// Classın daxilində 3 funksiya yazın.
// 1- funksiya hesab məlumatlarını çap etsin.
// 2- funksiya hesaba mədaxil etmək üçün
// 3- funksiya hesabdan məxaric etmək üçün yazılmalıdır
  BankAccount customer1 = BankAccount('Huru', '1234', 100);

  customer1.printAccount();
  print(customer1.income(100));
  print(customer1.outcome(100));
}

