Future<int> getFuture() {
  return Future<int>.value(Future.value(2000));
}

void main() async {
  final result = await getFuture();
  print(result);
}
