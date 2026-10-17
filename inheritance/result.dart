import 'student.dart';

class Result extends Student {
  Result(super.name, super.age, super.rollnumber, super.marks);

  double calculateAverage() {
    int total = 0;

    for (int mark in marks) {
      total = total + mark;
    }
    return total / marks.length;
  }

  void calculateGrade(double average) {
    if (average > 90) {
      print("A grade");
    } else if (average > 80) {
      print("B grade");
    } else if (average > 70) {
      print("C grade");
    } else if (average > 60) {
      print("D grade");
    } else {
      print("FAIL");
    }
  }

  void displayStudent() {
    print("Name:$name");
    print("Age:$age");
    print("RollNumber:$rollnumber");
    print("Marks:$marks");
    print("Average Mark:${calculateAverage()}");
    calculateGrade(calculateAverage());
  }
}

void main() {
  Result result = Result("Fahad", 19, 43, [100, 100, 90, 90]);
  result.displayStudent();
}
