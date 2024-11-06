class Person {
  String name;
  String _password = "123456";

  // constructor
  Person({
    required this.name,
  });

  // getter
  String get getPassword => _password;

  // setter
  set setPassword(String newPassword) => this._password = newPassword;

  //  void bilan
  void setPasswd(String passwd) {
    _password = passwd;
  }
}

void main(List<String> args) {
  Person person = Person(name: "Amir");
  person.setPasswd("654321");
  print(person.getPassword);
}
