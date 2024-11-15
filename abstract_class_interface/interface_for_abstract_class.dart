class Texnika {
  void texnikaHaqida() {}

  void muddati() {}
}

abstract class MaishiyTexnika implements Texnika {
  String? nomi;
  double? narxi;

  void f1();
}

class KirMashina extends MaishiyTexnika {
  @override
  void muddati() {
    // TODO: implement muddati
  }

  @override
  void texnikaHaqida() {
    // TODO: implement texnikaHaqida
  }
  
  @override
  void f1() {
    // TODO: implement f1
  }
}
