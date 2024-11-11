void main(List<String> args) {
  List<String> ismlar = [];

  // List<int> sonlar = List.filled(10, 0, growable: true);
  // sonlar.add(1);
  // print(sonlar);

  // List<int> sonlar2 = List.generate(
  //   10,
  //   (index) => index * 5,
  //   growable: false,
  // );
  // sonlar2[0] = 15;
  // print(sonlar2);

  // sonlar2
  //     .forEach((son) => print("$son sonining indexi ${sonlar2.indexOf(son)}"));

  // print(sonlar2.indexOf(50));
  // print(sonlar2.length);
  List1 list1 = List1.filled(10, "1", growable: true);
  print(list1.first);
  print(list1.last);
  // List1 list1 = List1.uzunligigacha(10);

  // print(list1.royxat);
}

class List1 {
  dynamic first;
  List<dynamic> royxat = [];
  List1();

  dynamic get last => royxat[royxat.length - 1];

  List1.filled(
    int uzunligi,
    dynamic element, {
    bool growable = false,
  }) {
    for (int i = 0; i < uzunligi; i++) {
      if (i == 0) {
        first = element;
      }
      royxat.add(element);
    }
  }

  List1.uzunligigacha(int uzunligi) {
    for (int i = 0; i < uzunligi; i++) {
      royxat.add(i);
    }
  }
}
