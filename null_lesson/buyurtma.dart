class Buyurtma {
  String nomi;
  double narxi;
  double? chegirma;

  Buyurtma({
    required this.nomi,
    required this.narxi,
  });

  double get getChegirma => chegirma ?? 0;
}

class Menu {
  static double umumiyHisob = 0;

  // get umumiy hisob
  String get getUmumiyHisob =>
      "Umumiy to'lashingiz kerak bo'lgan summa: $umumiyHisob so'm";

  // buyurtma
  String buyurtmaQil(Buyurtma buyurtma) {
    umumiyHisob += buyurtma.narxi * (1 - buyurtma.getChegirma / 100);
    return "${buyurtma.nomi} tayyor";
  }
}

void main(List<String> args) {
  Buyurtma osh = Buyurtma(nomi: "Osh", narxi: 30000)..chegirma = 15;
  Buyurtma choy = Buyurtma(nomi: "Choy", narxi: 3000);
  Buyurtma non = Buyurtma(nomi: "Non", narxi: 10000)..chegirma = 5;

  Menu menu = Menu();
  menu.buyurtmaQil(osh);
  menu.buyurtmaQil(choy);
  menu.buyurtmaQil(non);

  print(menu.getUmumiyHisob);
}
