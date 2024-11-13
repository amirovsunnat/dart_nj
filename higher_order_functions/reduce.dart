void main(List<String> args) {
  var numbers = [1, 2, 3, 4];
  var sum = numbers.reduce((a, b) => a + b);
  print(sum); // 10

  int total = 0;
  for (int num in numbers) {
    total += num;
  }
}
