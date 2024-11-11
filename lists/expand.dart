void main(List<String> args) {
  var sonlar = [
    [1, 2],
    [3, 4],
    [3, 4, 32, 43, 23],
  ];

  var kengaygan1 = [...sonlar[0], ...sonlar[1], ...sonlar[2]];
  var kengaygan = sonlar.expand((qism) => qism);
  print(kengaygan.toList());
  print(kengaygan1);
}
