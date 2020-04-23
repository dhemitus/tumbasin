import 'package:flutter_playground_kodingworks/models/product.dart';
import 'package:flutter_playground_kodingworks/modules/products/data/products_api_provider.dart';

class ProductsRepository {
  ProductsApiProvider _api = ProductsApiProvider();

  Future<List<Product>> fetchProducts() => _api.fetchProducts();
}