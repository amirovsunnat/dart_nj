  Map<String, dynamic>? sonlarRoyxati = {
    "int": [null, "ISM"],
  };

void main(List<String> args) {
  List<String> ismlar = ["Sunnat", "Bobur"];
  List<String> ismlar1 = ["Jahongir", "Nuriddin"];
  List<String?>? ismlar2 = [null];

  List<int?>? sonlar;

  sonlar = [null];

  // List combined = addTwoList(ismlar1, sonlar);
  // print(combined);

  List<String> combined2 = [...ismlar1, ...ismlar];
  print(combined2);
}

// List addTwoList(List l1, l2) {
//   var elements = [];
//   l1.forEach(
//     (element) => elements.add(element),
//   );
//   l2.forEach((element) => elements.add(element));

//   return elements;
// }
