import 'dart:io';

class Qabul {
  static Set<int> ids = {};
  static Map<int, Malumoti> qabulRoyxati = {};

  String qabulQilish({required int newId}) {
    for (int id in ids) {
      if (id == newId) {
        return "Qabulga allaqachon yozilgansiz. Iltimos navbatingizni kuting";
      }
    }
    Malumoti malumoti = Malumoti();
    print("Ismingizni kiriting: ");
    String? ism = stdin.readLineSync();

    print("Manzilingizni kiriting: ");
    String? manzil = stdin.readLineSync();

    print("Telefon raqamingizni kiriting: ");
    String? telefon = stdin.readLineSync();

    while (true) {
      if (ism == null) {
        print("Ismingizni kiriting: ");
        ism = stdin.readLineSync();
      } else if (manzil == null) {
        print("Manzilingizni kiriting: ");
        manzil = stdin.readLineSync();
      } else if (telefon == null) {
        print("Telefon raqamingizni kiriting: ");
        telefon = stdin.readLineSync();
      }
      if (ism != null && telefon != null && manzil != null) {
        break;
      }
    }
    malumoti.ism = ism;
    malumoti.manzil = manzil;
    malumoti.telefonRaqam = telefon;

    ids.add(newId);

    qabulRoyxati[newId] = malumoti;
    return "$ism qabulga muvaffaqqiyatli yozildingiz: ${malumoti.registerationTime}";
  }
}

class Malumoti {
  String? ism;
  String? manzil;
  String? telefonRaqam;
  final DateTime registerationTime = DateTime.now();

  // Malumoti(
  //   this.ism,
  //   this.manzil,
  //   this.telefonRaqam,
  // );
}

void main(List<String> args) {
  Qabul qabul = Qabul();

  while (true) {
    print("Id kiriting: ");
    int? idInt;
    String? id = stdin.readLineSync();
    if (id != null) {
      idInt = int.parse(id);
      print(qabul.qabulQilish(newId: idInt));
    }
  }
}
