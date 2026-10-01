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