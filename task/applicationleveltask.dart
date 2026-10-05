// List<Map<String, dynamic>> cart = [
//   {
//     "product": "Laptop",
//     "price": 55000,
//     "quantity": 1,
//     "category": "Electronics",
//   },
//   {"product": "Mouse", "price": 1200, "quantity": 2, "category": "Electronics"},
//   {"product": "Bag", "price": 2000, "quantity": 1, "category": "Fashion"},
// ];

// double calculateOrderTotal(
//   List<Map<String, dynamic>> cart, {
//   double discount = 0,
//   double tax = 18,
//   double deliveryCharge = 50,
// }) {
//   double subtotal = 0;

//   for (var item in cart) {
//     subtotal += item["price"] * item["quantity"];
//   }

//   double discountAmount = subtotal * (discount / 100);
//   double taxAmount = (subtotal - discountAmount) * (tax / 100);
//   double deliveryChargeAmount = deliveryCharge;

//   double total = subtotal - discountAmount + taxAmount + deliveryChargeAmount;

//   try {} catch (e) {}

//   return total;
// }

// void main() {
//   calculateOrderTotal(cart);
//   print(calculateOrderTotal(cart));
// }
