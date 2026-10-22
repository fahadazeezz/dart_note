import 'developer.dart';
import 'employee.dart';

class SeniorDeveloper extends Developer {
  SeniorDeveloper(super.salary);

  @override
  double calculateSalary() {
    return super.calculateSalary() - 5000 + 10000;
  }
}

void main() {
  Employee employee = Employee(50000);
  Developer developer = Developer(50000);
  SeniorDeveloper seniorDeveloper = SeniorDeveloper(50000);
  print(employee.calculateSalary());
  print(developer.calculateSalary());
  print(seniorDeveloper.calculateSalary());
}
