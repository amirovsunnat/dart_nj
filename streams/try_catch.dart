Stream<int> getNumbers() async* {
  for (int i = 0; i <= 5; i++) {
    if (i == 4) {
      throw "Son 4 ga teng bo'lmasin";
    }
    yield i;
    await Future.delayed(Duration(seconds: 1));
  }
}

void main(List<String> args) async {
  final stream = getNumbers();

  stream.listen(
    (event) => print(event),
    onError: (error) => print(error),
  );
  // try {
  //   await for (final son in getNumbers()) {
  //     print(son);
  //   }
  // } catch (e) {
  //   print(e);
  // }
}
