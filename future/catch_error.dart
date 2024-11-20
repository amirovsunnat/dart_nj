import 'dart:math';

void main() {
  Future<int> futureNumber = Future.error(10.5647787878);

  futureNumber.then((value) {
    print('Muvaffaqiyat: Natija $value');
    return value * 2;
  }).then((newValue) {
    print('Yangi natija: $newValue');
  }).catchError(
    (error) {
      print('Xato yuz berdi: $error');
    },
    test: (error) {
      if (error is int) {
        print("ERROR INT TIPIDA");
      } else {
        print("Error: $error");
      }
      return error is int;
    },
  );
}
