import 'employee.dart';

class Developer extends Employee {
  Developer(double salary) : super(salary);

  @override
  double calculateSalary() {
    return super.calculateSalary() + 5000;
  }
}
