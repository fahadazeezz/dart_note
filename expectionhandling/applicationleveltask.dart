import 'dart:io';

List<Map<String, dynamic>> cart = [
  {
    "product": "Laptop",
    "price": 55000,
    "quantity": 1,
    "category": "Electronics",
  },
  {"product": "Mouse", "price": 1200, "quantity": 2, "category": "Electronics"},
  {"product": "Bag", "price": 2000, "quantity": 1, "category": "Fashion"},
];

double calculateOrderTotal(
  List<Map<String, dynamic>> cart, {
  double discount = 0,
  double tax = 18,
  double deliveryCharge = 50,
}) {
  double subtotal = 0;

  for (var item in cart) {
    subtotal += item["price"] * item["quantity"];
  }

  double discountAmount = subtotal * (discount / 100);
  double taxAmount = (subtotal - discountAmount) * (tax / 100);
  double deliveryChargeAmount = deliveryCharge;

  double total = subtotal - discountAmount + taxAmount + deliveryChargeAmount;

  return total;
}

void validateOrderData(
  double subtotal,
  double discount,
  int quantity,
  double price,
) {
  try {
    if (subtotal > 50000) {
      throw "delivery should become free";
    }
    if (discount > 30) {
      throw "Product discount cannot be greater than 30%";
    }

    if (quantity <= 0 || quantity.isNegative) {
      throw "Out of Stock";
    }

    if (price == 0) {
      throw "Price cannot be null";
    }
  } catch (e) {
    print("Error:$e");
  }
}

void main() {
  stdout.write("Enter your total:");
  double subtotal = double.parse(stdin.readLineSync()!);
  stdout.write("Enter your discount:");
  double discount = double.parse(stdin.readLineSync()!);
  stdout.write("Enter your quantity:");
  int quantity = int.parse(stdin.readLineSync()!);
  stdout.write("Enter your price:");
  double price = double.parse(stdin.readLineSync()!);

  calculateOrderTotal(cart);

  validateOrderData(subtotal, discount, quantity, price);
  print(calculateOrderTotal(cart));
}
