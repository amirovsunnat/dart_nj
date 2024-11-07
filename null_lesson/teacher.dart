class Teacher {
  String name;
  // nullable
  String? officePhone;

  Teacher(this.name);

  // get contact details
  String getContactDetails() {
    return "Name: $name, Office telefon raqami: ${officePhone ?? "Telefon raqam berilmagan"}";
  }
}

void main(List<String> args) {
  Teacher teacher = Teacher("Sunnat");
  teacher.officePhone = "+998999990999";
  print(teacher.getContactDetails());
}
