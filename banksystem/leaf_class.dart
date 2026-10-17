import 'intermediate_class.dart';

class AtmAccount extends CheckingAccount {
  AtmAccount(super._accountNumber, super._balance, super.transactionFee);

  @override
  void deposit(double amount) {
    if (amount % 500 == 0 || amount % 200 == 0) {
      super.deposit(amount);
    } else {
      print("ATM accepts deposits in multiples of 500 or 200 only");
    }
  }

  @override
  void withdraw(double amount) {
    if (amount % 500 == 0) {
      super.withdraw(amount);
    } else {
      print("Withdrawal is Unseccessfull");
    }
  }

  void displayInfo() {
    print("Account Number:$accountNumber");
    print("Balance:$balance");
    print("Transaction Fee:$transactionFee");
  }
}

void main() {
  AtmAccount atmAccount = AtmAccount("Fahad", 0, 20);
  atmAccount.deposit(10000);
  atmAccount..withdraw(500);
  atmAccount.displayInfo();
}
