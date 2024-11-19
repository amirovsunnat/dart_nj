import 'dart:isolate';

void getOrder(List<dynamic> arguments) {
  String orderName = arguments[0];
  SendPort sendPort = arguments[1];

  sendPort.send("$orderName is ready. Help yourself 🍴");
}

void main(List<String> args) {
  ReceivePort receivePort = ReceivePort();

  Isolate.spawn(
    getOrder,
    [
      "Pizza",
      receivePort.sendPort,
    ],
  );

  receivePort.listen(
    (message) {
      print(message);
      receivePort.close();
    },
  );
}
