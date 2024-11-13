void main(List<String> args) {
  List<int> sonlar = [31, 0, -23, 32, 84, -65, 4, 355, 9];

  int maxSon = sonlar[0];
  int minSon = sonlar[0];
  for (int i = 0; i < sonlar.length; i++) {
    if (sonlar[i] > maxSon) {
      maxSon = sonlar[i];
    }
    if (sonlar[i] < minSon) {
      minSon = sonlar[i];
    }
  }

  print(maxSon);
  print(minSon);


  
}
