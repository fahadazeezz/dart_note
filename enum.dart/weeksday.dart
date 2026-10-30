// enum Weeksday { Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday }

// void main() {
//   List<Weeksday> currentDay = Weeksday.values;
//   print(currentDay);

//   Weeksday day = Weeksday.values[0];
//   print(day);
// }

enum Employee {
  intern(basicSalary: 10000, bonusPercentage: 2.0, annualLeave: 10),
  juniorDeveloper(basicSalary: 25000, bonusPercentage: 5.0, annualLeave: 12),
  seniorDeveloper(basicSalary: 60000, bonusPercentage: 15.0, annualLeave: 20),
  teamLead(basicSalary: 80000, bonusPercentage: 20.0, annualLeave: 25);

  final int basicSalary;
  final double bonusPercentage;
  final int annualLeave;

  const Employee({
    required this.basicSalary,
    required this.bonusPercentage,
    required this.annualLeave,
  });

  double get annualBonus => basicSalary * bonusPercentage / 100 * 12;

  double get annualSalary => (basicSalary * 12) + annualBonus;

  bool canApproveLeave(int requestedDays) {
    if (requestedDays <= 2) {
      return true;
    } else if (requestedDays <= 3) {
      return true;
    } else if (requestedDays <= 5) {
      return true;
    } else if (requestedDays <= 10) {
      return true;
    }
    return false;
  }
}
