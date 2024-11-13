void main(List<String> args) {
  var numbers = [1, 2, 3, 4, 5];
  // var evens = numbers.where((n) => n.isEven);
  // print(evens.toList()); // [2, 4]

  var checkIsEven = (n) => n.isEven;
  var evens2 = numbers.where(
    (element) => checkIsEven(element),
  );
  // print(evens2);

  // print("Ikkinchi natija: ${where2(checkIsEven, numbers)}");

  print("Uchinchi natija: ${where2(checkIsOdd, numbers)}");

  // print(checkIsOdd(4));
  checkIsOdd;

  // print("Uchinchi natija: ${where2((n) => n.isOdd, numbers)}");
  // print("To'rtinchi natija: ${where2((n) => n >= 3, numbers)}");
}

bool checkIsOdd(n) {
  // if (n.isOdd) {
  //   return true;
  // } else {
  //   return false;
  // }
  return n.isOdd;
}

bool checkIsOdd2(n) => n.isOdd;

List<int> where2(Function checkElement, List<int> elements) {
  List<int> result = [];
  for (int i in elements) {
    if (checkElement(i)) {
      result.add(i);
    }
  }
  return result;
}
