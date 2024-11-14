class Bobo {
  double? meros;

  void merosHaqida() {
    print("Men bobo classiman. Menda \$$meros bor. Tejab ishlatinglar.");
  }

  void merosIshlatish(double summa) {
    if (this.meros != null && this.meros! >= 0) {
      this.meros = this.meros! - summa;
    }
  }

  Bobo(this.meros);
}

class Ota extends Bobo {
  String ism;

  @override
  void merosHaqida() {
    // super.merosHaqida();
    print("Men ota classiman va menda \$$meros bor");
  }

  Ota(this.ism, double? meros) : super(meros);
}

class Ona {
  String? manzil;

  Ona(this.manzil);
}

class Bola extends Ota {
  String? favMashgulot;

  Bola(String ism, this.favMashgulot, double? meros) : super(ism, meros);

  @override
  void merosHaqida() {
    // super.merosHaqida();
    print("Men farzandman va oxirgi avlod. Menda \$$meros qoldi.");
  }
}

void main(List<String> args) {
  Bobo bobo = Bobo(10000);
  bobo.merosHaqida();
  bobo.merosIshlatish(1000);
  print(bobo.meros);

  Ota ota = Ota("Bobur", bobo.meros);
  ota.merosHaqida();
  ota.merosIshlatish(3000);
  print(ota.meros);

  Bola bola = Bola("Eshmat", "Flutter", ota.meros);
  bola.merosHaqida();
  print(bola.meros);

  print("Ota ismi: ${ota.ism}");
}
