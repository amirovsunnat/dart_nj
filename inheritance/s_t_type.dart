// Asosiy klass
class Shakl {
  void chizmoq() {
    print('Shaklni chizamiz');
  }
}

// Aylana klass
class Aylana extends Shakl {
  @override
  void chizmoq() {
    print('Aylana chizamiz');
  }

  void ranggaBoyash(String rang) {
    print('Doira $rang ga bo\'yaymiz');
  }
}

// Kvadrat klass
class Kvadrat extends Shakl {
  @override
  void chizmoq() {
    print('Kvadrat chizamiz');
  }

  void yuzaniHisoblash(double eni, double boyi) {
    double yuza = eni * boyi;
    print('Kvadrat yuzasi: $yuza.');
  }
}

void main() {
  List<Shakl> shakllar = [Aylana(), Kvadrat()];

  for (var shakl in shakllar) {
    shakl.chizmoq(); // Polimorfizm
    if (shakl is Aylana) {
      shakl.ranggaBoyash(
          "qizil"); // Tushunarli usulga qarab qo'shimcha usulni chaqirish
    } else if (shakl is Kvadrat) {
      shakl.yuzaniHisoblash(
          2, 5); // Tushunarli usulga qarab qo'shimcha usulni chaqirish
    }
  }
}
