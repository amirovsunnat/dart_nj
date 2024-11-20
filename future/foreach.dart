void main() async {
  List<int> numbers = [1, 2, 3, 4, 5];

  await Future.forEach(numbers, (int number) async {
    await Future.delayed(Duration(seconds: 1));
    print('Son: $number');
  });

  print('Barcha sonlar chiqarildi');
}
