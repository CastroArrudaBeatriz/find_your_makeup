import 'dart:convert';

import 'package:find_your_makeup/model/product.dart';
import 'package:http/http.dart' as http;


class MakeupService {

  Future<List<Product>> listProductsOfBrand(String brand) async {
    final response = await http
        .get(Uri.parse('http://makeup-api.herokuapp.com/api/v1/products.json?brand=$brand'));

    if (response.statusCode == 200) {
      Iterable list = jsonDecode(response.body);
      return list.map((product) => Product.fromJson(product)).toList();
    } else {
      throw Exception('Deu erro!!');
    }
  }

}
