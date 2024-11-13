void main(List<String> args) {
  var names = ['Annb', 'John', 'Anna', 'Bob', 'Chandler'];
  names.sort(
    (a, b) => b.length.compareTo(a.length),
  );
  print(names); // [Anna, Bob, John]
}
