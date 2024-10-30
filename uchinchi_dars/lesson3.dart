import 'dart:io';

void main(List<String> args) {
  // int son = 3;

  // if (son is String) {
  //   print("Son ${son.runtimeType} typda.");
  // } else if (son is double) {
  //   print("Int data typeda");
  // } else {
  //   print("Son string typeda emas");
  // }

  // if (son is int) print("Stringda");

  // int yosh = 14;
  // double boyi = 180.2;
  // if (yosh > 14 && boyi > 180) {
  //   print("Yoshi 14 dan katta va normal heightda");
  // } else if (boyi < 180 || yosh < 14) {
  //   print("Normal height emas va yoshi 14 dan kichkina");
  // } else {
  //   print("$yosh ni o'zgartiring");
  // }

  // int yosh = 0;
  // if (yosh >= 16) {
  //   print("Siz passport olishingiz mumkin.");
  // } else if (yosh <= 0) {
  //   print("Yoshingizni to'g'ri kiriting");
  // } else {
  //   print("Siz hali passport yoshiga yetmagansiz.");
  // }

  // int oyRaqami = 5;

  // // Oy raqamini tekishirish
  // if (oyRaqami == 1) {
  //   print("Yanvar oyi");
  // } else if (oyRaqami == 5) {
  //   print("Fevral oyi");
  // }

  // if (oyRaqami == 4) {
  //   print("Aprel");
  // }

  /*
    Foydalanuvchidan 2 ta son olib ularni taqqoslash
   */

  // print("Birinchi sonni kiriting: ");
  // String? num1 = stdin.readLineSync();
  // print("Ikkinchi sonni kiriting: ");
  // String? num2 = stdin.readLineSync();

  // // intga type conversion qilish
  // int numInt1 = int.parse(num1!);
  // int numInt2 = int.parse(num2!);

  // if (numInt1 > numInt2) {
  //   print("$numInt1 $numInt2 dan katta");
  // } else if (numInt2 > numInt1) {
  //   print("$numInt2 $numInt1 dan katta");
  // } else {
  //   print("$numInt2 $numInt1 ga teng");
  // }

  // // String equqality
  // String a = "apple";
  // String b = "Apple";

  // int result = a.compareTo(b);

  // if (result < 0) {
  //   print('"$a" $b dan oldinda.');
  // } else if (result > 0) {
  //   print('"$a" $b dan keyin.');
  // } else {
  //   print('"$a" va $b teng.');
  // }

  // int x = 5;
  // int y = 10;

  // int result = x.compareTo(y);

  // if (result < 0) {
  //   print('$x $y dan kichik.');
  // } else if (result > 0) {
  //   print('$x $y dan katta.');
  // } else {
  //   print('$x va $y teng.');
  // }

  var haftaKuni = 1;
  // switch (haftaKuni) {
  //   case 1:
  //     print("Bugun Dushanba.");
  //     break;
  //   case 2:
  //     print("Bugun Seshanba.");
  //     break;
  //   case 3:
  //     print("Bugun Chorshanba.");
  //     break;
  //   case 4:
  //     print("Bugun Payshanba.");
  //     break;
  //   case 5:
  //     print("Bugun Juma.");
  //     break;
  //   case 6:
  //     print("Bugun Shanba.");
  //     break;
  //   case 7:
  //     print("Bugun Yakshanba.");
  //     break;
  //   default:
  //     print("Mavjud bo'lmagan hafta kuni.");
  //     break;
  // }

  // print((haftaKuni == 5)
  //     ? "Juma"
  //     : (haftaKuni == 1)
  //         ? "Dushanba"
  //         : (haftaKuni == 2)
  //             ? "Seshanba"
  //             : (haftaKuni == 3)
  //                 ? "Chorshanba"
  //                 : "Boshqa kun"); // ternary operator example

  int son1 = 25;
  int son2 = 25;
  String kattaRaqam = (son1 > son2)
      ? "$son1 $son2 dan katta"
      : (son1 == son2)
          ? "$son1 va $son2 teng"
          : "$son2 $son1 dan katta";
  print(kattaRaqam);
}
