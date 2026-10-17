class Product {
  String name = "Wireless Headphones";
  int _stock = 10;

  int get stock => _stock;

  void reStocking(int quantity) {
    if (quantity <= 0) {
      print("Invaild quantity");
      return;
    }
    _stock = stock + quantity;
  }

  void stockPurchase(int quantity) {
    if (quantity < 0) {
      print("Invaild quantity");
      return;
    } else if (quantity > stock) {
      print("Out of stock");
      return;
    }
    _stock = stock - quantity;
  }
}
