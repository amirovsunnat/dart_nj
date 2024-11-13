void main() {
  List<int> numbers = [3, 5, 1, 7, 4];
  int min = numbers[0];
  int max = numbers[0];

  for (int number in numbers) {
    if (number < min) min = number;
    if (number > max) max = number;
  }

  print("Min: $min, Max: $max");
}
