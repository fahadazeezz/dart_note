void main() async {
  print("Program Started");
  await task("A", 3);
  task("B", 2);
  await task("C", 1);
  print("Program finished");
}

Future<void> task(String name, int secondss) async {
  print("$name started");

  await Future.delayed(Duration(seconds: secondss));
  print("$name completed");
}
