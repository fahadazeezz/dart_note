mixin TransactionLogger {
  void logTransaction() {
    print("Transaction Logged sucessfully");
  }
}

mixin DiscountMixin {
  double applyDiscount(double amount) {
    return amount * 0.90;
  }
}

mixin FraudDetectionMixin {
  void checkFraud(double amount) {
    if (amount > 50000) {
      print("Suspicious transaction detected");
    } else {
      print("Transaction verified");
    }
  }
}

mixin NotificationMixin {
  void sendNotification() {
    print("Payment notification sent");
  }
}

class UPIPayment
    with
        TransactionLogger,
        DiscountMixin,
        FraudDetectionMixin,
        NotificationMixin {
  processPayment(double amount) {
    logTransaction();
    final pay = applyDiscount(amount);
    checkFraud(amount);
    sendNotification();

    return pay;
  }
}

void main() {
  final payment = UPIPayment();
  double pay = payment.processPayment(1000);
  print("Final Payment:$pay");
}
