import "dart:io";

void main() {
//   for (int i = 0; i < 8; i++) {
//     for (int j = 0; j < 8; j++) {
//       stdout.write('* ');
//     }
//     print('');
//   }

//   String ism = "Sunnat";

//   for (var harf in ism.runes) {
//     print("${String.fromCharCode(harf)} $harf ning unicodi.");
//   }

//   List<int> sonlar = [12, 32, 12, 43, 20];
//   sonlar.forEach(
//     (son) => son % 2 == 0 ? print("Juft") : print("Toq"),
//   );

// String ism = "Amir";
// int i = 0;
// do {
// 	print(ism);
// 	i--;
// }
// while(i>1);

//   int son = 1;
//   while (son < 5) {
//     print("$son soni print bo'ldi.");
//     if (son == 3) {
//       break;
//     }
//     son++;
//   }
//   print("While loopimiz ishlashdan to'xtadi.");

//   List<String> harflar = [
//     "c",
//     "r",
//     "w",
//     "l",
//     "b",
//     "a",
//     "u",
//     "i",
//     "m",
//     "t",
//     "v"
//   ];
//   for (int i = 0; i < harflar.length; i++) {
//     print(harflar[i]);
//     if (harflar[i] == "i") {
//       break;
//     }
//   }
//   print("For loopi to'xtadi.");

//   print("Iltimos yoshingizni kiriting: ");
//   String? yosh = stdin.readLineSync();

//   try {
//     int yoshInt = int.parse(yosh!);
//     print(yoshInt);
//   } on FormatException {
//     print("Iltimos yoshingizni to'g'ri formatda kiriting (Misol uchu: 15)");
//   } catch (e) {
//     // print("Iltimos yoshingizni to'g'ri formatda kiriting (Misol uchu: 15)");
//     print("Nimadur xato ketdi. Batafsil: \n");
//     print(e);
//   }

//   int a = 14;
//   int b = 2;
//   int javob;
//   try {
//     javob = a ~/ b;
//   } on UnsupportedError {
//     print("Sonni nolga bo'lishning iloji yo'q!");
//   } catch (xato) {
//     print(xato);
//   } finally {
//     print('Finnally bloki doim ishga tushadi.');
//   }

//   print("Iltimos sonni kiriting: ");
//   String? son = stdin.readLineSync();

//   void checkRange(int number) {
//     if (number < 1 || number > 100) {
//       throw Exception("Son belgilangan oraliqga to'g'ri kelmadi.");
//     }
//   }

//   checkRange(int.parse(son!));

  /*
        1. birinchi loop qatorlar uchun
        2. sonlarni qiymatini saqlash uchun o'zgaruvchi yarataman
        3. ikkinchi loopda har safar shu sonlani chiqaraman birinchi 
        loopning o'zgaruvchisidan kam yoki teng bo'lguncha
        4. birinchi loopning so'ngida print qoldiramiz
     */

  int qatorlar = 25;
  int son = 1;

  for (int i = 0; i < qatorlar; i++) {
    for (int a = 0; a <= i; a++) {
      stdout.write("$son  ");
      son++;
    }
    print("");
  }
}
