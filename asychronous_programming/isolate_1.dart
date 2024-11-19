import 'dart:isolate';

// Isolate uchun funksiya
void sayHello(SendPort sendPort) {
  // Isolate orqali xabar yuborish
  sendPort.send("Salom, Dart!");
  sendPort.send([1, 21, 3, 32, 12]);
}

void main() {
  // 1. ReceivePort yaratamiz
  ReceivePort receivePort = ReceivePort();

  // 2. Isolate ishga tushiramiz
  Isolate.spawn(sayHello, receivePort.sendPort);

  // 3. ReceivePort orqali xabarni qabul qilamiz
  receivePort.listen((message) {
    // Xabarni ekranga chiqaramiz
    print("Xabar: $message");

    receivePort.close(); // ReceivePort'ni yopamiz
  });
}
