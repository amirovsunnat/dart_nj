void main(List<String> args) {
  // String? name;

  Person person = Person("Sunnat");
  print(person.name);

  // late String surname;
  // surname = "Amirov";
  // print(surname);

  // print(name);
}

class Person {
  late String name;

  Person(String ism) {
    name = ism;
  }
}
