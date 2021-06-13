import 'dart:convert';

import 'package:api_intregration_getx/ProductModule/Model/product_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final client = http.Client();

  Future<List<Products>> fetchData() async {
    final response = await client.get(Uri.parse(
        'https://my-json-server.typicode.com/shohag7552/Api-demo/posts'));
    if (response.statusCode == 200) {
      List data = json.decode(response.body);
      // return Products.fromMap(jsonString);
      return data.map((e) => new Products.fromMap(e)).toList();
    }
  }
}
