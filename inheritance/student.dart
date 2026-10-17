import 'person.dart';

class Student extends Person {
  int rollnumber;
  List<int> marks;

  Student(String name, int age, this.rollnumber, this.marks) : super(name, age);
}
