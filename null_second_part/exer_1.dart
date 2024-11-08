void main(List<String> args) {
  List<String>? ismlar = ["Sunnat", "Bobur"];
  // ismlar = null;
  // if (ismlar != null) {
  //   for (int i = 0; i < ismlar.length; i++) {
  //     print(ismlar?[i]);
  //   }
  // } else {
  //   print(ismlar);
  // }

  ismlar != null
      ? ismlar.forEach(
          // (ism) => print(ism),
          (ism) {
            print(ism);
            print(ism.endsWith("r"));
          },
        )
      : print(ismlar);

  // print(ismlar?[0]);
}
