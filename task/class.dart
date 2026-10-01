// class Student {
//   int id;
//   String name;
//   String course;
//   List<int> marks;

//   Student({
//     required this.id,
//     required this.name,
//     required this.course,
//     required this.marks,
//   });

//   // Calculate Average Mark
//   void averageMark() {
//     int total = 0;

//     for (int i = 0; i < marks.length; i++) {
//       total += marks[i];
//     }

//     double average = total / marks.length;

//     print("Average:$average");
//   }

  // void printStudentDetails() {
  //   print("Id:$id,Name:$name,Course:$course,Mark:$marks");
  //   averageMark();
  // }
// }

// void main() {
//   List<Student> students = [
//     Student(id: 101, name: "Arun", course: "Flutter", marks: [80, 75, 90]),
//     Student(id: 102, name: "Rahul", course: "Python", marks: [65, 70, 80]),
//     Student(id: 103, name: "Anu", course: "Flutter", marks: [92, 88, 95]),
//     Student(id: 104, name: "Fazil", course: "Python", marks: [55, 62, 58]),
//     Student(id: 105, name: "Neha", course: "Flutter", marks: [72, 80, 76]),
//   ];

  // for (Student student in students) {
  //   student.printStudentDetails();
  // }

  // Task 2
  // searchStudent(studentId);

  // void searchStudent(int studentId) {
  //   bool isFound = false;

  //   for (int i = 0; i < students.length; i++) {
  //     if (students[i].id == studentId) {
  //       isFound = true;

  //       String name = students[i].name;
  //       String course = students[i].course;
  //       List<int> marks = students[i].marks;

  //       int total = 0;

  //       for (int j = 0; j < marks.length; j++) {
  //         total = total + marks[j];
  //       }

  //       double average = total / marks.length;

  //       print("Name: $name");
  //       print("Course: $course");
  //       print("Marks: $marks");
  //       print("Average mark: $average");

  //       break;
  //     }
  //   }

  //   if (isFound == false) {
  //     print("Student not found");
  //   }
  // }

  // print("Enter Student ID:");
  // int studentId = int.parse(stdin.readLineSync()!);

  // Task 3

  // findTopper();

  // double calculateAverage(List<int> marks) {
  //   int total = 0;

  //   for (int i = 0; i < marks.length; i++) {
  //     total = total + marks[i];
  //   }

  //   return total / marks.length;
  // }

  // void findTopper() {
  //   String topperName = "";
  //   String topperCourse = "";
  //   double highestAverage = 0;

  //   for (int i = 0; i < students.length; i++) {
  //     String name = students[i].name;
  //     String course = students[i].course;
  //     List<int> marks = students[i].marks;

  //     double average = calculateAverage(marks);

  //     if (average > highestAverage) {
  //       highestAverage = average;
  //       topperName = name;
  //       topperCourse = course;
  //     }
  //   }

  //   print("Student Name: $topperName");
  //   print("Course: $topperCourse");
  //   print("Average Mark: $highestAverage");
  // }

  // Task 4

  // print("Enter course name:");
  // String courseName = stdin.readLineSync()!;

  // filterByCourse(courseName, students);

  // Task 5

  //   for (Student student in students) {
  //     List<int> marks = student.marks;

  //     int total = 0;
  //     for (int mark in marks) {
  //       total += mark;
  //     }

  //     double average = total / marks.length;

  //     if (average >= 50) {
  //       print("${student.name} → PASS");
  //     } else {
  //       print("${student.name} → FAIL");
  //     }
  //   }
// }



// void filterByCourse(String courseName, students) {
//   bool found = false;

//   for (int i = 0; i < students.length; i++) {
//     if (students[i].course.toLowerCase() == courseName.toLowerCase()) {
//       if (found == false) {
//         print("\n$courseName Students:");
//       }

//       print(students[i].name);
//       found = true;
//     }
//   }

//   if (found == false) {
//     print("No students found for this course");
//   }
// }