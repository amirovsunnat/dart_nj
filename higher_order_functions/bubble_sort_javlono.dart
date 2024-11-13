void main(List<String> args) {
  List<int> sonlar = [43, 23, 53, 51, 62, 23, 56];

  for (int i = 0; i < sonlar.length; i++) {
    for (int j = 0; j < sonlar.length; j++) {
      if (sonlar[i] < sonlar[j]) {
        int temp = sonlar[j];
        sonlar[j] = sonlar[i];
        sonlar[i] = temp;
      }
    }
  }

  print(sonlar);
}
