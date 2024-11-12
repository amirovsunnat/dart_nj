import 'dart:io';

void main(List<String> args) {
  // List<String> names = ["Sunnat", "Akbar"];
  // print(names.contains("Sunnat1"));

  // print(names
  //     .where(
  //       (name) => name == "Sunnat1",
  //     )
  //     .isNotEmpty);

  // set yaratish usuli1
  dynamic set1 = <int>{};

  // set yaratish usuli2
  Set<int> set2 = Set();

  // set yaratish usuli3
  Set<int> set3 = new Set();

  set1.add(5);
  set1.addAll([2, 3, 53, 23, 12, 5]);
  print(set1);
  print(set1.toList());
  set1 = set1.toList();
  print(set1.runtimeType);
}
