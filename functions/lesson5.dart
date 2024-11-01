void main(List<String> args) {
  // haqida();
  // soliqniHisobla(500);

  // yigindi(3, 4);
  // yigindi(8, 19); // argument

  // print(toliqIsmniQaytar("Sunnat", "Amirov"));

  // printHaqida("Sunnat", "Amerika");
  // yuzaniHisobla(12, 16);

  // print(celsiusToFahrenheit(celsius: 20));
  // print(toliqIsmniQaytar2(familya: "Amirov", ism: "Sunnat"));

  // print(
  //   emailYuborish(
  //     qabulQiluvchi: "bekzdod@gmail.com",
  //     batafsil: "Ertaga meeting bo'ladi.",
  //     mavzu: "Salaray negition.",
  //   ),
  // );

  // print(isCome(0));

  printHaqida2(
      toliqIsmniQaytar: toliqIsmniQaytar, familiya: "Amirov", ism: "Sunnat");
}

var isCome = (int baho) {
  if (baho == 0) return false;
  return true;
};

// void haqida() {
//   String ism = "Amir Temur";
//   // tarjimai hol
//   print(
//       "$ism O‘rta, Janubiy va G‘arbiy Osiyo, shuningdek,Kavkaz, Povoljya va Rus tarixida muhim o‘rin tutgan O‘rta Osiyolik turkiy hukmdor, sarkarda va zobit. Sarkarda, poytaxti Samarqand bo‘lgan Temuriylar saltanati (1370 yil) asoschisi.");
// }

// void soliqniHisobla(double maosh) {
//   double soliq = maosh * 12 / 100;
//   print(soliq);
// }

void yigindi(int a, int b) {
  //parameter
  // return a + b;
  print(a + b);
}

String toliqIsmniQaytar(String ism, String familya) {
  return "Sizning to'liq ismingiz: $ism $familya";
}

void printHaqida(String ism, [String davlat = "O'zbekiston"]) {
  print("Mening ismim $ism. Men $davlat davlati fuqarosiman.");
}

void printHaqida2({
  required Function toliqIsmniQaytar,
  required String ism,
  required String familiya,
}) {
  print(toliqIsmniQaytar(ism, familiya));
  printHaqida(ism);
}



// optional parameter misol
void yuzaniHisobla([double eni = 5, double boyi = 5]) {
  print("Kiritilgan to'rtburchakning yuzi: ${eni * boyi}");
}

double celsiusToFahrenheit({required double celsius}) {
  return (celsius * 9 / 5) + 32;
}

// ikkinchi ko'rinish
String toliqIsmniQaytar2({String? ism, String? familya}) {
  return "Sizning to'liq ismingiz: $ism $familya";
}

String emailYuborish({
  String qabulQiluvchi = "abdumalik@gmail.com",
  String mavzu = "ish yuzasidan",
  String batafsil = "Ish yuzasidan",
}) {
  return "Kimga: $qabulQiluvchi\nMavzu: $mavzu\n\nYozilgan xat: $batafsil";
}
