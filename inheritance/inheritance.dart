void main(List<String> args) {
  Person person = Person(age: 22, name: "Bobur");
  person.yurish();

  Student student = Student(age: 17, name: "Bunyod");
  student.yurish();
}

class Person {
  String? name;
  int? age;

  void yurish() {
    print("Person is walking");
  }

  // Person(this.age, this.name);

  // Person({required this.age, required this.name});

  Person({required String name, required int age}) {
    this.age = age;
    this.name = name;
  }

  // Person.forward(String name, String age) : this(name, age);
}

class Student extends Person {
  String? name;
  int? age;

  @override
  void yurish() {
    // super.yurish();
    print("Student wants to walk");
  }

  Student({required super.age, required super.name});
}
