import 'dart:async';

void main(List<String> args) {
  StreamController controller = StreamController<String>.broadcast();

  StreamSubscription tinglovchiBir = controller.stream.listen(
    (event) {
      print("Tinglovchi bir : $event");
    },
  );

  StreamSubscription tinglovchiIkki = controller.stream.listen(
    (event) {
      print("Tinglovchi ikki: $event");
    },
  );

  controller.add("Googlega ishga kirish kerak, bo'lmasa hisobmas");
  controller.add("DARSDA UXLAMANGLAR ILTIMOS........ 😉");
  controller.addError("ERROR BO'LDI");

  controller.close();

  Stream.fromIterable([]);
}
