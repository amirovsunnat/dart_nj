class BankAccount {
  String name;
  double _balance = 0;
  static int _id = 0;
  int id = 0;

  // static field for retrieving accounts
  static Map<String, BankAccount> _accounts = {};

  // setter for accounts
  set setAccounts(BankAccount account) {
    _accounts[_id.toString()] = account;
  }

  // getter for accounts
  Map<String, BankAccount> get getAccounts => _accounts;

  /*
    Map kerak -> BankAccountlarni saqlash uchun id bilan.
   */

  BankAccount({
    required this.name,
  }) {
    _id++;
    id = _id;
  }

  // getter for id
  int get getId => _id;

  // getter method
  double get getBalance => _balance;

  // setter method
  set setBalance(double newBalance) {
    newBalance < 0
        ? print("Balans 0 dan katta bo'lishi kerak")
        : _balance = newBalance;
  }

  @override
  String toString() {
    return 'BankAccount account name: $name\nBalance: $_balance\nId: $id\n';
  }
}

void main(List<String> args) {
  BankAccount bankAccount1 = BankAccount(name: "Bank account n1");
  // set accounts
  bankAccount1.setAccounts = bankAccount1;
  bankAccount1.setBalance = 50000;
  print("Bank account1 BALANCE: ${bankAccount1.getBalance}");
  print("Bank account1 ID: ${bankAccount1.getId}");

  BankAccount bankAccount2 = BankAccount(name: "Bank account n2");
  // set accounts
  bankAccount2.setAccounts = bankAccount2;
  print("Bank Account2 BALANCE: ${bankAccount2.getBalance}");
  print("Bank account2 ID: ${bankAccount2.getId}");

  print("Bank account1 ID: ${bankAccount1.getId}");
  print("***********************************");
  print(bankAccount2.getAccounts);
}
