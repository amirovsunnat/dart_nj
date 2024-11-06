class Hisob {
  static int umumiyHisoblarSoni = 0;

  String ism;
  double balans;

  Hisob(this.ism, this.balans) {
    umumiyHisoblarSoni++;
  }

  // Static metod
  static void umumiyHisoblarniKorsat() {
    print('Jami hisoblar soni: $umumiyHisoblarSoni');
  }
}

void main() {
  print(Hisob.umumiyHisoblarSoni);
  var hisob1 = Hisob('Akmal', 1000);
  var hisob2 = Hisob('Aziza', 2000);
  var hisob3 = Hisob('Akmal', 1000);
  var hisob4 = Hisob('Aziza', 2000);

  // Static metodni sinf nomi orqali chaqirish
  Hisob.umumiyHisoblarniKorsat();
}
