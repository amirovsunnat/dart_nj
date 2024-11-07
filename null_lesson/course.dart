// ignore_for_file: public_member_api_docs, sort_constructors_first
class Course {
  String name;
  int? enrolledStudentsNum;
  int maxStudents;
  Teacher teacher;
  List<Student> students = [];

  Course(
    this.name,
    this.teacher, [
    this.maxStudents = 15,
  ]);

  int get getStudentNumber => enrolledStudentsNum ?? 0;

  // add student into course
  void addStudent(Student student) {
    if (getStudentNumber <= maxStudents) {
      students?.add(student);
      enrolledStudentsNum = getStudentNumber + 1;
      print("${student.name} guruhga qo'shildi");
    }
  }

  @override
  String toString() {
    return 'Course(name: $name, enrolledStudentsNum: $enrolledStudentsNum, maxStudents: $maxStudents, teacher: $teacher, students: $students)';
  }
}

class Student {
  String name;

  Student({
    required this.name,
  });

  @override
  String toString() => 'Student(name: $name)';
}

class Teacher {
  String name;

  Teacher({
    required this.name,
  });

  @override
  String toString() => 'Teacher(name: $name)';
}

void main(List<String> args) {
  Teacher teacher = Teacher(name: "Azam");
  Student student1 = Student(name: "Sunnat");
  Student student2 = Student(name: "Bobur");
  Student student3 = Student(name: "Samir");

  Course english = Course("English", teacher);
  english.addStudent(student1);
  english.addStudent(student2);
  english.addStudent(student3);
  print(english);
}
