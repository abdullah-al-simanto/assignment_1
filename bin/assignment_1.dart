main() {
  Student john = Student(
      name: "John Doe",
      age: 20,
      address: "123 Main St",
      courseScores: [90, 85, 82]
  );

  Teacher smith = Teacher(
    name: "Mrs. Smith",
    age: 35,
    address: "456 Oak St",
    coursesTaught: ["Math", "English", "Bangla"],
  );

  john.displayStudentInfo();
  print("====================");
  smith.displayTeacherInfo();
}
abstract class Role {
  void displayRole();
}

class Person implements Role {
  String name;
  int age;
  String address;
  Person(this.name, this.age, this.address);

  @override
  void displayRole(){
  }
}

class Student extends Person {
  List <int> courseScores;

  Student({
    required String name,
    required int age,
    required String address,
    required this.courseScores,
  }) : super(name, age, address);

  @override
  void displayRole() {
    print("Role: Student");
  }
  double averageScores() {
    int score1 = 90;
    int score2 = 85;
    int score3 = 82;
    int totalScore = (score1 + score2 + score3);
    double averageScore = (totalScore / 3);
    return averageScore;
  }

  void displayStudentInfo() {
    print("Student Information:");
    displayRole();
    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
    print("Average Score: ${averageScores().toStringAsFixed(1)}");
  }
}

class Teacher extends Person {
  List<String> coursesTaught;

  Teacher({
    required String name,
    required int age,
    required String address,
    required this.coursesTaught,
  }) : super(name, age, address);

  @override
  void displayRole() {
    print("Role: Teacher");
  }

  void displayTeacherInfo() {
    print("Teacher Information:");
    displayRole();
    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
    print("Courses Taught:");
    for (var course in coursesTaught) {
      print("- $course");
    }
  }
}