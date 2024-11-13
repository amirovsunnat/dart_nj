void main(List<String> args) {
  List<String> ismlar = [
    "Javlon",
    "Sunnat",
    "Bobur",
    "Amir",
    "Gitler",
  ];

  List<String> listWithGitler = ismlar
      .takeWhile(
        (n) => n != "Gitler",
      )
      .toList();

  List<String> listWithoutGitlerBro = ismlar
      .skipWhile(
        (n) => n == "Gitler",
      )
      .toList();

  print("new list with Gitler: $listWithGitler");
  print("new list without Gitler: $listWithoutGitlerBro");
}
