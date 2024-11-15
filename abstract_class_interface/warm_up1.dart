// abstract transport classi
abstract class Transport {
  String? nomi;
  int? yolovchilarSoni;
  int? tezlik;

  Transport({this.tezlik, this.nomi, this.yolovchilarSoni});

  // abstarct methodlar
  void yolovchilarniTashish();

  void tezlinkniOshirish([int? tezlik]);

  void tezlinkniKamaytirish([int? tezlik]);
}

class Taxi extends Transport {
  Taxi(int? tezlik, int yolovchilarSoni)
      : super(
          tezlik: tezlik,
          yolovchilarSoni: yolovchilarSoni,
        );

  @override
  void tezlinkniKamaytirish([int? tezlik]) {
    if (this.tezlik != null && tezlik != null) {
      this.tezlik = this.tezlik! - tezlik;
    }
  }

  @override
  void tezlinkniOshirish([int? tezlik]) {
    if (this.tezlik != null && tezlik != null) {
      {
        this.tezlik = this.tezlik! + tezlik;
        print("Taxi ${this.tezlik} tezlik bilan harakat qilayapti.");
      }
    } else {
      throw Exception("Tezlikka qiymat bergin");
    }
  }

  @override
  void yolovchilarniTashish() {
    print("TAXI YO'LOVCHI TASHIMOQDA: $yolovchilarSoni");
  }
}

class Samalyot extends Transport {
  Samalyot(String nomi, int sigimi)
      : super(
          nomi: nomi,
          yolovchilarSoni: sigimi,
        );

  @override
  void tezlinkniKamaytirish([int? tezlik]) {
    if (this.tezlik != null) {
      this.tezlik = this.tezlik! - 500;
    }
  }

  @override
  void tezlinkniOshirish([int? tezlik]) {
    if (this.tezlik != null) {
      this.tezlik = this.tezlik! + 500;
    }
  }

  @override
  void yolovchilarniTashish() {
    print("Samolyot YO'LOVCHI TASHIMOQDA: $yolovchilarSoni");
  }
}

void main(List<String> args) {
  Taxi taxi = Taxi(null, 4);
  taxi.tezlik = 10;
  taxi.tezlinkniOshirish(30);
}
