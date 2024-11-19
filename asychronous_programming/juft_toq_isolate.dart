import 'dart:isolate';

// Isolate uchun funksiya
void separateEvenOdd(List<dynamic> args) {
  List<int> numbers = args[0]; // Raqamlar ro‘yxati
  SendPort sendPort = args[1]; // Natijani qaytarish uchun port

  // Juft va toq raqamlarni ajratish
  List<int> evenNumbers = numbers.where((n) => n % 2 == 0).toList();
  List<int> oddNumbers = numbers.where((n) => n % 2 != 0).toList();

  // Natijani Map sifatida qaytarish
  sendPort.send({'even': evenNumbers, 'odd': oddNumbers});
}

void main() async {
  // 1. Raqamlar ro'yxatini yaratish
  List<int> numbers =
      List.generate(20, (i) => i + 1); // 1 dan 20 gacha raqamlar

  // 2. ReceivePort - natijalarni qabul qilish uchun
  ReceivePort receivePort = ReceivePort();

  // 3. Isolate yaratish va ishga tushirish
  await Isolate.spawn(separateEvenOdd, [numbers, receivePort.sendPort]);

  // 4. Natijalarni qabul qilish
  print("Juft va toq raqamlar ajratilmoqda...");
  receivePort.listen((message) {
    print("Juft raqamlar: ${message['even']}");
    print("Toq raqamlar: ${message['odd']}");
    receivePort.close(); // ReceivePort'ni yopish
  });
}
