class Shaxs with ShaxsHaqida {
  final String ism;

  Shaxs(this.ism);
}

mixin ShaxsHaqida {
  String shaxsHaqida(String ism, [int yosh = 30]) {
    return "Ismi: $ism, Yoshi: $yosh";
  }
}

void main(List<String> args) {
  Shaxs shaxs = Shaxs("Sunnat");
  print(shaxs.shaxsHaqida(
    shaxs.ism,
  ));

  shaxs.f1();

  int yosh = 10;
  yosh.toString2();

  shaxs.ismniQaytar();
}

extension Intga on int {
  String toString2() => this.toString();
}

extension ShaxsHaqidaExtension on Shaxs {
  String ismniQaytar() => this.ism;

  void f1() => print("f1");
}
