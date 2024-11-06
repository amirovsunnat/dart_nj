// ignore_for_file: public_member_api_docs, sort_constructors_first
class StaticExa {
  // fields (static)

  static String? nomi;
  int id = 0;

  String get getNomi => nomi!;

  static haqida(String nomi) {
    print(nomi);
  }
}

void main(List<String> args) {
  StaticExa.haqida("");

  // StaticExa staticExa = StaticExa();
  // StaticExa staticExa1 = StaticExa();

  // StaticExa.nomi = "Example2";
  // print(staticExa.getNomi);
  // print(staticExa1.getNomi);

  // StaticExa.nomi = "Example3";

  // print(staticExa.getNomi);
  // print(staticExa1.getNomi);

  // StaticExa.haqida("Nimadur");
}
