class Nimadur {}

mixin MashinaTuzatish implements Nimadur {
  void mashinaTuzatish(String nomi) {
    print("$nomi tuzatilayapti");
  }
}

mixin Tuning {
  void tuning() {
    print("Tuning qilinmoqda");
  }
}

mixin MashinaYuvaOlmoq {
  void yuvish() {
    print('Men mashinani yuvishim mumkin 🚗🧽');
  }
}

class AvtoServis with MashinaTuzatish, MashinaYuvaOlmoq, Tuning {
  final String mashinaNomi;

  AvtoServis(this.mashinaNomi);

  void f() {
    super.mashinaTuzatish(this.mashinaNomi);
  }
}

void main(List<String> args) {
  AvtoServis avtoServis = AvtoServis("Gentra");
  avtoServis.f();
  avtoServis.yuvish();
  avtoServis.tuning();
}
