void main(List<String> args) {
  Set<String> mahsulotlar1 = {"Non", "Sut", "Choy"};
  Set<String> mahsulotlar2 = {"Non", "Sut", "Noutbook"};
  Set<String> mahsulotlar3 = {"Non", "Ruchka"};

  print(mahsulotlar1.union(mahsulotlar2).union(mahsulotlar3));

  // mahsulotlar2.addAll(mahsulotlar1);
  // print(mahsulotlar2);

  // List<String> mahsulotlar3 = ["Non", "Sut", "Choy"];
  // List<String> mahsulotlar4 = ["Non", "Sut", "Noutbook"];
  // mahsulotlar4.addAll(mahsulotlar3);
  // print(mahsulotlar4);
}
