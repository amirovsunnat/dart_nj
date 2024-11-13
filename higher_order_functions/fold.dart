void main(List<String> args) {
  var numbers = [1, 2, 3, 4];
  var sum = numbers.fold(10, (a, b) => a + b);
  print(sum); // 10
}
