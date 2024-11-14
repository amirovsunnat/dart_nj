// Asosiy sinf
class Shaxs {
  String ism;
  int yosh;

  Shaxs(this.ism, this.yosh);

  void tanishtirish() {
    print("Mening ismim $ism va men $yosh yoshdaman.");
  }
}

class Talaba extends Shaxs {
  String kurs;

  Talaba(String ism, int yosh, this.kurs) : super(ism, yosh);

  void oqish() {
    print("Men $kurs kursida o'qiyman.");
  }
}

class Oqituvchi extends Shaxs {
  String fan;

  Oqituvchi(String ism, int yosh, this.fan) : super(ism, yosh);

  void darsBerish() {
    print("Men $fan fanidan dars beraman.");
  }
}

void main() {
  Talaba talaba = Talaba("Ali", 20, "Kompyuter Fanlari");
  Oqituvchi oqituvchi = Oqituvchi("Husan", 40, "Matematika");

  print(oqituvchi is Oqituvchi);
  print(talaba is Shaxs);
  print(talaba is Talaba);

  // talaba.tanishtirish();
  // talaba.oqish();
  // oqituvchi.tanishtirish();
  // oqituvchi.darsBerish();
}
