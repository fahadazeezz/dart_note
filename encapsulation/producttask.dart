import 'product.dart';

void main() {
  var product = Product();

  print("Available stock: ${product.stock}");
  // Customer purchases 2 headphones
  product.reStocking(10);

  print("After purchase: ${product.stock}");

  // The problem!
  product.reStocking(1000);

  print("After changing stock: ${product.stock}");

  // Another problem!
  product.reStocking(-50);

  print("Final stock: ${product.stock}");
}
