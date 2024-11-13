main() {
  List<int> sonlar = [21, 432, 32, 3];

  sonlar.addAll([1, 32, 43, 6]);
  print(sonlar);

  var myMap = {'a': 2};
  myMap.update(
    'a',
    (value) => value + 5,
  );

  print(myMap);
}
