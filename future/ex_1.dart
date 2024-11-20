void main(List<String> args) async {
  print(await malumotlarniOlish());
}

Future<String> malumotlarniOlish() async {
  await Future.delayed(Duration(seconds: 3));
  print("Funksiya yakunladi.");
  return "Funksiya tugadi";
}
