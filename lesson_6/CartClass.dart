class BankAccount {
  String customerName;
  String CartNumber;
  late double balance;
  BankAccount(this.customerName, this.CartNumber, this.balance);
    void printAccount() {
      print('Customer name : ${customerName}\nCard Number: ${CartNumber}');
    }
    double income(double amount){
      balance+=amount;
      return balance;
    }
    double outcome(double amount){
      balance-=amount;
      return balance;
    }
  
}
