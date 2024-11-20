import 'dart:async';

void main() async {
  print('Start');

  // Asinxron ish (microtask)
  Future.delayed(Duration(seconds: 1), () {
    print('Future delayed task');
  });

  // Keyingi oddiy kod
  print('Middle');

  await Future.microtask(() {
    print('Microtask 2');
  });
  // Yana bir asinxron ish (microtask)
  await Future.microtask(() {
    print('Microtask 1');
  });

  // Oxirgi kod
  print('End');
}
