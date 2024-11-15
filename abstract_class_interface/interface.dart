abstract class Transport {
  Transport() {
    print("Transport konstruktori chaqirildi");
  }

  Transport.namedConstructor() {
    print("Named cons");
  }

  String? rang;
  String? nom;
  int? maxSpeed;
  int? _id;

  int? get getId => _id;

  set setId(int newId) => _id = newId;

  void yukKotarishQobiliyati() {
    print("10T");
  }

  void trasnportniIshgaTushurish() {
    print("Transport ishga tushdi");
  }
}


class Mashina implements Transport {
  int? yili;

  @override
  int? maxSpeed;

  @override
  String? nom;

  @override
  String? rang;

  Mashina({this.maxSpeed, this.nom, this.rang, this.yili});
  @override
  void trasnportniIshgaTushurish() {
    print("Mashina ishga tushadi");
  }

  @override
  void yukKotarishQobiliyati() {
    print("0.5T");
  }

  @override
  int? _id;

  int? get getId => _id;
  
  @override
  set setId(int newId) {
    // TODO: implement setId
  }
}

class YukMashina extends Transport implements Mashina {
  @override
  void abstactMethod() {
    // TODO: implement abstactMethod
  }

  @override
  int? maxSpeed;

  @override
  String? nom;

  @override
  String? rang;

  @override
  int? yili;

  @override
  void trasnportniIshgaTushurish() {
    // TODO: implement trasnportniIshgaTushurish
  }

  @override
  void yukKotarishQobiliyati() {
    // TODO: implement yukKotarishQobiliyati
  }
  
  @override
  set getId(int? _getId) {
    // TODO: implement getId
  }
}

class ElektrCar extends Transport implements Mashina {
  @override
  int? maxSpeed;

  @override
  String? nom;

  @override
  String? rang;

  @override
  int? yili;

  @override
  void trasnportniIshgaTushurish() {
    // TODO: implement trasnportniIshgaTushurish
  }

  @override
  void yukKotarishQobiliyati() {
    super.yukKotarishQobiliyati();
    print("0.2T");
  }
  
  @override
  set getId(int? _getId) {
    // TODO: implement getId
  }
}

void main(List<String> args) {
  Mashina mashina = Mashina(
    maxSpeed: 200,
    nom: "Malibu",
    rang: "Qora",
    yili: 2024,
  );

  // Transport transport = Transport();

  mashina.trasnportniIshgaTushurish();
}
