import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_playground_kodingworks/models/menu_category.dart';

class CategoriesApiProvider {
  String _url = 'https://api.tumbasin.id/v1/products/categories';

  Future<List<MenuCategory>> fetchCategories() async {
    final _response  = await http.get(_url);

    if(_response.statusCode == 200) {
      print(_response.statusCode);
      final _responseString = jsonDecode(_response.body) as List;
      List<MenuCategory> _categories = _responseString.map((item) => MenuCategory.fromJson(item)).toList();
      print(_categories.first.image.source);
      return _categories;
    } else {
      throw Exception('failed to load categories');
    }
  }
}