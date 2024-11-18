extension MaxValue on List<num> {
  num engQimmat() {
    num qimmat = this.reduce(
      (a, b) => a > b ? a : b,
    );
    return qimmat;
  }

  num engArzon() {
    num arzon = this.reduce(
      (a, b) => a < b ? a : b,
    );
    return arzon;
  }

  num ortachaQiymat() {
    num ortacha = this.reduce(
          (a, b) => a + b,
        ) /
        this.length;
    return ortacha;
  }
}

extension StringList on List<String> {
  String engUzun() {
    return this.reduce(
      (a, b) => a.length.compareTo(b.length) == 1 ? a : b,
    );
  }

  String engQisqa() {
    return this.reduce(
      (a, b) => b.length.compareTo(a.length) == 1 ? a : b,
    );
  }
}

void main(List<String> args) {
  List<num> sonlar = [2, 42, 1, 3, -3, 23, 542, 563, 123];
  List<String> ismlar = ["Muhammadyusuf", "Sunnat", "Abdurashid", "Bobur"];
  String ism1 = "Sunnat";
  String ism2 = "Sunnata";
  print(ism1.compareTo(ism2));

  print(ismlar.engUzun());
  print(ismlar.engQisqa());

  print(sonlar.engQimmat());
  print(sonlar.engArzon());
  print(sonlar.ortachaQiymat());
}
