void main(List<String> args) {
  var numbers = [1, 2, 3, 4];
  List<int> squares = [];

  numbers.forEach(
    (son) => squares.add(son * son),
  );

  print(squares);
  // var squares = numbers.map((n) => n * n);
  // print(squares.toList()); // [1, 4, 9, 16]
}
