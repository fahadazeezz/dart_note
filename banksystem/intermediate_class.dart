import 'basic_class.dart';

class CheckingAccount extends BankAccount {
  double transactionFee;

  CheckingAccount(String _accountNumber, double _balance, this.transactionFee)
    : super(_accountNumber, _balance);

  @override
  void withdraw(double amount) {
    double totalAmount = amount + transactionFee;
    super.withdraw(totalAmount);
  }
}
