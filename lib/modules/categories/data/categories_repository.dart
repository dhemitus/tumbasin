import 'package:flutter_playground_kodingworks/models/menu_category.dart';
import 'package:flutter_playground_kodingworks/modules/categories/categories.dart';

class CategoriesRepository {
  CategoriesApiProvider _api = CategoriesApiProvider();

  Future<List<MenuCategory>> fetchCategories() => _api.fetchCategories();
}