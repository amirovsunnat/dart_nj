// ignore_for_file: public_member_api_docs, sort_constructors_first
class Servis {
  static double daromad = 0;
  static int mijozlarSoni = 0;
  List<Mashina> clients = [];

  void xizmatKorsatish(Mashina mashina, double ximatNarxi) {
    daromad += ximatNarxi;
    mijozlarSoni++;
    clients.add(mashina);
  }

  void xizmatKorsatishUmumiy(
      List<Mashina> mashinalar, List<double> xizmatNarxlari) {
    for (int i = 0; i < mashinalar.length; i++) {
      daromad += xizmatNarxlari[i];
      mijozlarSoni++;
      clients.add(mashinalar[i]);
    }
  }

  double get getDaromad => daromad;

  int get getMijozlarSoni => mijozlarSoni;

  void getClient() {
    clients.forEach((mashina) => print(mashina));
  }
}

class Mashina {
  String nomi;
  String markasi;
  

  Mashina({
    required this.nomi,
    required this.markasi,
  });

  @override
  String toString() => 'Mashina(nomi: $nomi, markasi: $markasi)';
}

void main(List<String> args) {
  Mashina mashina = Mashina(nomi: "Malibu", markasi: "GM");
  Mashina mashina1 = Mashina(nomi: "Kaptiva", markasi: "GM");
  Mashina mashina2 = Mashina(nomi: "Tiko", markasi: "GM");
  Mashina mashina3 = Mashina(nomi: "Nexia", markasi: "GM");

  Servis servis = Servis();

  servis.xizmatKorsatish(mashina, 100000);
  servis.xizmatKorsatishUmumiy([
    mashina1,
    mashina2,
    mashina3
  ], [
    140000,
    50000,
    500000,
  ]);

  print(servis.getDaromad);
  print(servis.getMijozlarSoni);
  servis.getClient();
}
