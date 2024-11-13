void main() {
  List<int> numbers = [3, 5, 1, 7, 4];

  for (int i = 0; i < numbers.length; i++) {
    for (int j = 0; j < numbers.length - i - 1; j++) {
      if (numbers[j] > numbers[j + 1]) {
        // Elementlarni almashtirish
        int temp = numbers[j];
        numbers[j] = numbers[j + 1];
        numbers[j + 1] = temp;
      }
    }
  }

  print(numbers);
}
