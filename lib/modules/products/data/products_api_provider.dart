import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_playground_kodingworks/models/product.dart';

class ProductsApiProvider {
  String _url = 'https://api.tumbasin.id/v1/products?vendor=1000&featured=true';

  Future<List<Product>> fetchProducts() async {
    final _response  = await http.get(_url);

    if(_response.statusCode == 200) {
      final _responseString = jsonDecode(_response.body) as List;
      List<Product> _products = _responseString.map((item) => Product.fromJson(item)).toList();
      print(_products.first.image.first.source);
      return _products;
    } else {
      throw Exception('failed to load products');
    }
  }
}