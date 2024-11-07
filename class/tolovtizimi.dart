class Tolovtizimi {
  static Tolovtizimi _instance = Tolovtizimi._private();

  // named va private constructor
  Tolovtizimi._private() {}

  // factory constructor
  factory Tolovtizimi() {
    return _instance;
  }

  static int tolovlarSoni = 0;
  double balans = 100;

  // getter for tolovlarSoni
  int get getTolovlarSoni => tolovlarSoni;

  void tolovQilish(double summa) {
    double foiz = summa * 0.02;
    balans = balans - (summa + foiz);
    tolovlarSoni++;
    print("Balansingizda \$$balans summa qoldi.");
  }

  static void funksiya() {}

  static int fn1() {
    return 1;
  }

  // malumot tipi yo'q
  static funksiya1() {}
}

void main(List<String> args) {
  Tolovtizimi tolovtizimi = Tolovtizimi();
  Tolovtizimi tolovtizimi2 = Tolovtizimi();

  tolovtizimi.tolovQilish(10);
  tolovtizimi.tolovQilish(20);
  tolovtizimi.tolovQilish(30);

  print(tolovtizimi.getTolovlarSoni);
  print(tolovtizimi2.getTolovlarSoni);
  print("***************************************");
  tolovtizimi2.tolovQilish(5);
  print(tolovtizimi2.getTolovlarSoni);
}
