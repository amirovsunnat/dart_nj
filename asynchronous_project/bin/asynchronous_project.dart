import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

void main(List<String> arguments) {
  Future<void> getProducts() async {
    final result =
        await http.get(Uri.parse("https://fakestoreapi.com/products"));
    print(result);
    if (result.statusCode == 200) {
      print(result);
      // return jsonDecode(result.body);
    }
  }

  getProducts();
}
