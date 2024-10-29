void main() {
  // Misol 1: Bitwise OR va AND
  var x = 12;
  var y = 7;
  var result1 = x & y;
  var result2 = x | y;
  print("x & y = $result1");
  print("x | y = $result2");

  // Misol 2: Bitwise XOR va NOT
  var a = 25;
  var b = 15;
  var result3 = a ^ b;
  var result4 = ~a;
  print("a ^ b = $result3");
  print("~a = $result4");

  // Misol 3: Bitwise Shift
  var n = 9;
  var result5 = n << 2;
  var result6 = n >> 1;
  print("n << 2 = $result5");
  print("n >> 1 = $result6");

  // Mantiqiy operatorlar
  var a1 = 10;
  var b1 = 5;
  var c1 = 20;

  var result = (a1 > b1 && b1 < c1) || (a1 < c1 && b1 > c1);

  print("Natija: $result");

  // Conditional operatorlar
  var number = 4; // son kiritasizlar
  var result_ = (number > 0)
      ? "Musbat"
      : (number < 0)
          ? "Manfiy"
          : "Nol";

  print("Natija: $result_");

  // Cascade operatorlar
  var numbers = <int>[]
    ..add(10)
    ..add(20)
    ..add(30);

  print('Ro\'yxat: $numbers');

  // Ro'yxatdagi elementlar yig'indisini hisoblash
  var sum = numbers.reduce((a, b) => a + b);
  print('Yig\'indi: $sum');

  // Dynamic types
  dynamic variable = 10;
  print(variable);

  variable = 'Dart dasturlash tili';
  print(variable);

  variable = [1, 2, 3];
  print(variable);
}
