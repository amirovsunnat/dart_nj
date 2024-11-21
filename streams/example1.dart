Future<int> getFutureNumber() async {
  return Future.delayed(
    Duration(seconds: 1),
    () => 5,
  );
}

Stream<int> getStreamNumbers() async* {
  int sum = 0;
  for (int i = 0; i <= 5; i++) {
    sum += i;
    yield i;
    await Future.delayed(Duration(seconds: 1));
    print("Sonlar yig'indisi: $sum");
  }
}

void main(List<String> args) async {
  // print(await getFutureNumber());
  int sum = 0;
  await for (final number in getStreamNumbers()) {
    sum += number;
    print(number);
  }

  print("Sonlar yig'indisi: $sum");


  
}
