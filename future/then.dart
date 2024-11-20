void main(List<String> args) async {
  await malumotlarniOlish()
      .then(
        (value) => print("Funksiya yakunladi xatolarsiz."),
      )
      .onError(
        (error, stackTrace) => print("Error: $error, Stacktrace: $stackTrace"),
      );
}

Future<void> malumotlarniOlish() async {
  // await Future.delayed(Duration(seconds: 3));
  // print("Funksiya yakunladi.");
  // return "Funksiya tugadi";

  await Future.error("error");
}
