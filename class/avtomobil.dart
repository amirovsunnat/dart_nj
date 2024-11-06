class Avtomobil {
  final String nomi;
  final double _narxi = 10000;
  int _chegirma = 5;

  Avtomobil(this.nomi);

  // get chegirmali narx
  double get getChegirmaliNarxda => _narxi * (1 - _chegirma / 100);

  // get chegirma
  int get getChegirma => _chegirma;

  // set chegirma
  set setChegirma(int chegirma) {
    if (chegirma == 5 || chegirma == 10 || chegirma == 15) {
      _chegirma = chegirma;
    } else {
      print("Kechirasiz, insof sari baraka......");
    }
  }
}

void main(List<String> args) {
  Avtomobil avtomobil = Avtomobil("Genter");
  avtomobil.setChegirma = 100;
  print(avtomobil.getChegirmaliNarxda);
}
