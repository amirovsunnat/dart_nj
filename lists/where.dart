void main(List<String> args) {
  var raqamlar = [1, 2, 3, 4, 5];
  var juftlar = raqamlar.where((raqam) => raqam % 2 != 0);
  juftlar = juftlar.toList();
  print(juftlar);
}
