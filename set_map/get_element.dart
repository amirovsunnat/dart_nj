import 'dart:collection';

void main(List<String> args) {
  Set geekSet = new Set();
  geekSet.addAll([9, 1, 2, 3, 4, 5, 6, 1, 1, 9]);

  for (var el in geekSet) {
    print(el);
  }

  HashSet hashSet = HashSet();

  // iterator
  var iterator = geekSet.iterator;

  while (iterator.moveNext()) {
    print("Iterator yordamida: ${iterator.current}");
  }
}
