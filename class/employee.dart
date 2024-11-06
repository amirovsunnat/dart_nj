class Employee {
  String ism;
  String lavozimi;
  double _maoshi = 300;
  int _bonus = 10;

  Employee({
    required this.ism,
    required this.lavozimi,
  });

  // getter
  double getMaosh() =>
      _maoshi * (1 + _bonus / 100); // (_maosh * 10 / 100) + _maosh

  // bonus set
  set setBonus(int yangiBonus) {
    if (yangiBonus >= 10 && yangiBonus <= 20) {
      _bonus = yangiBonus;
    } else {
      print("10 va 20  oralig'ida % bonus kiritishingiz mumkin.");
    }
  }
}

void main(List<String> args) {
  Employee employee = Employee(ism: "Nuriddin", lavozimi: "Manager");
  print(employee.getMaosh());
  employee.setBonus = 15;

  print("Yangi maosh");
  print(employee.getMaosh());
}
