class BankAccount {
  String _accountNumber;
  double _balance;

  BankAccount(this._accountNumber, this._balance);

  String get accountNumber => _accountNumber;
  double get balance => _balance;

  void deposit(double amount) {
    if (amount <= 0) {
      print("Amount should be greater than 0");
    } else {
      _balance += amount;
      print("Deposit is Successful");
    }
  }

  void withdraw(double amount) {
    if (amount < 0 || amount > _balance) {
      print("Insufficient Balance");
    } else {
      _balance = _balance - amount;
      print("Withdraw is Successful");
    }
  }
}
