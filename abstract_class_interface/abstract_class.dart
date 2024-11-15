void main(List<String> args) {
  Talaba shaxs = Talaba();
  print(shaxs.natija());
  shaxs.haqida();
  shaxs.salom2();
  print(shaxs is Shaxs);
  print(shaxs is Talaba);
}

abstract class Shaxs {
  // abstract method
  void salom();

  // oddiy method
  void salom2() {}

  // qo'shimcha metod
  int natija();
}

class Talaba extends Shaxs {
  @override
  void salom() {}

  @override
  int natija() {
    return 5;
  }

  void haqida() {
    print("Talaba haqida........");
  }
}
