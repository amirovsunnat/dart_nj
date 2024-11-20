void main() async {
  int count = 0;

  await Future.doWhile(() async {
    print("Hozirgi son: $count");
    count++;
    return count < 5;
  });

  print("Sikl tugadi");
}
