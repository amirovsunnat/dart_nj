import 'dart:convert';

void main(List<String> args) {
  /*
    key: value,
   */

  Map<String, dynamic> setOrMap = {
    "name": "Sunnat",
  };

  var info = {
    "ism": "Bobur",
    "familya": "Abdurayimov",
    "yosh": 19,
    "studentmi": true,
    "qiziqishi": ["Futbol", "Kitoblar", "Dasturlash", "Documentary film"],
    "address": {
      "shahar": "Tashkent",
      "viloyat": "Toshkent",
    }
  };

  JsonEncoder encoder = new JsonEncoder.withIndent('  ');
  String prettyprint = encoder.convert(info);
  print(prettyprint);
}
