import 'dart:async';

void main() {
  print('Start');

  // Asinxron ish (microtask)
  Future.delayed(Duration(seconds: 1), () {
    print('Future delayed task');
  });

  // Keyingi oddiy kod
  print('Middle');

  Future.microtask(() {
    print('Microtask 2');
  });
  // Yana bir asinxron ish (microtask)
  Future.microtask(() {
    print('Microtask 1');
  });

  // Oxirgi kod
  print('End');
}
