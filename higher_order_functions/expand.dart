void main(List<String> args) {
  var pairs = [
    [1, 2],
    [3, 4],
    [3, 5, 32, 54, 8]
  ];
  var expanded = pairs.expand((pair) => pair);
  print(expanded.toList());

  List<int> newList = [];
  for (var list in pairs) {
    newList += [...list];
  }

  print(newList);
}
