import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

Future<String> getProducts() async {
  final result = await http.get(Uri.parse("https://fakestoreapi.com/products"));
  print(result);
  if (result.statusCode == 200) {
    // print(result);
    return jsonDecode(result.body).toString();
  }
  throw Exception("Ma'lumot olishda xatolik yuz berdi.");
}

void main(List<String> arguments) async {
  try {
    final result = await getProducts();
    print(result);
  } catch (e, stacktrace) {
    print(stacktrace);
    print(e);
  }
}
