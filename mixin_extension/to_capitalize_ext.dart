extension ToCapitalizeTextExt on String {
  String toCapitalizeOwned() {
    return this
        .split(' ')
        .map((soz) => soz[0].toUpperCase() + soz.substring(1))
        .join(' ')
        .toString();
  }
}

void main(List<String> args) {
  String sentence = "katta harflarga o'girish misoli";
  print(sentence.toCapitalizeOwned());

  List<String> words = sentence.split(" ");
  print(words.map((word) => word + "5"));
}
