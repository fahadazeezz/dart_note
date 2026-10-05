// Task 1

// import 'dart:io';

// void main() {
//   stdout.write("Enter your email:");
//   String email = stdin.readLineSync()!;
//   stdout.write("Enter your password:");
//   String password = stdin.readLineSync()!;
//   stdout.write("Enter your age:");
//   int age = int.parse(stdin.readLineSync()!);

//   userRegistration(email, password, age);
// }

// void userRegistration(String email, String password, int age) {
//   try {
//     if (!email.contains('@')) {
//       throw invalidEmailException("Email does not contain @ character");
//     }

//     if (password.length != 8) {
//       throw weakPasswordException("password does not contain 8 characters");
//     }
//     if (age <= 18) {
//       throw invalidAgeException("You are not eligible");
//     }
//   } catch (e) {
//     print("Error:$e");
//   }
// }

// class invalidEmailException implements Exception {
//   String message;
//   invalidEmailException(this.message);

//   @override
//   String toString() {
//     return message;
//   }
// }

// class weakPasswordException implements Exception {
//   String message;
//   weakPasswordException(this.message);

//   @override
//   String toString() {
//     return message;
//   }
// }

// class invalidAgeException implements Exception {
//   String message;
//   invalidAgeException(this.message);

//   @override
//   String toString() {
//     return message;
//   }
// }

// Task 2

import 'dart:io';

void main() {
  stdout.write("Enter your product name:");
  String name = stdin.readLineSync()!;
  stdout.write("Enter your quantity:");
  int quantity = int.parse(stdin.readLineSync()!);
  stdout.write("Enter your wallet:");
  double wallet = double.parse(stdin.readLineSync()!);

  Product product = Product(name: name, price: 100000, stock: 2);

  checkOut(product, quantity, wallet);
}

class Product {
  String name;
  double price;
  int stock;

  Product({required this.name, required this.price, required this.stock});
}

void checkOut(Product product, int quantity, double wallet) {
  try {
    // Check quantity
    if (quantity <= 0) {
      throw invalidQuantityExceptions("Invaild Quantity");
    }
    // Check Stock
    if (quantity > product.stock) {
      throw outOfStockExceptions("Out of Stock");
    }

    // check TotalPrice
    double totalPrice = product.price * quantity;

    // Check wallet
    if (wallet < totalPrice) {
      throw insufficientWalletExceptions("Insufficient Wallet Balance");
    }
  } catch (e) {
    print("Error:$e");
  }
}

class invalidQuantityExceptions implements Exception {
  String message;
  invalidQuantityExceptions(this.message);

  @override
  String toString() {
    return message;
  }
}

class outOfStockExceptions implements Exception {
  String message;
  outOfStockExceptions(this.message);

  @override
  String toString() {
    return message;
  }
}

class insufficientWalletExceptions implements Exception {
  String message;
  insufficientWalletExceptions(this.message);

  @override
  String toString() {
    return message;
  }
}
