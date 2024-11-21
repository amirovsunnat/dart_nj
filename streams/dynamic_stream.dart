Stream<dynamic> getDynamicMalumot(List<dynamic> royxat) async* {
  for (var element in royxat) {
    yield element;
    await Future.delayed(Duration(seconds: 1));
  }
}

void main(List<String> args) {
  final stream = getDynamicMalumot(
    [
      true,
      3,
      239.4,
      "Sunnat",
      {"ism": "Abdulaziz"},
    ],
  );

  stream.listen(
    (element) => print(element),
  );
}
