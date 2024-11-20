import 'dart:isolate';

void kvadratgaOshir(List<dynamic> arguments) {
  List<int> sonlar = arguments[0];
  SendPort sendPort = arguments[1];

  sonlar = sonlar
      .map(
        (son) => son * son,
      )
      .toList();

  sendPort.send(sonlar);
}

void main(List<String> args) {
  ReceivePort receivePort = ReceivePort();
  List<int> sonlar = List.generate(
    1000000,
    (index) {
      return index + 1;
    },
  );

  print(sonlar);

  Isolate.spawn(kvadratgaOshir, [
    sonlar,
    receivePort.sendPort,
  ]);

  receivePort.listen(
    (message) {
      print(message);
      receivePort.close();
    },
  );
}
