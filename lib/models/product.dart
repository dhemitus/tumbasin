import 'package:flutter_playground_kodingworks/models/image_source.dart';
import 'package:flutter_playground_kodingworks/models/meta_data.dart';

class Product {
  int id;
  String name;
  String price;
  String regular;
  String sale;
  List<ImageSource> image;
  List<MetaData> data;

  Product({
    this.id, 
    this.name,
    this.price,
    this.regular,
    this.sale,
    this.image,
    this.data
  });


  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    regular = json['regular_price'];
    sale = json['sale_price'];
    image = (json['images'] as List).map((item) => ImageSource.fromJson(item)).toList();
    data = (json['meta_data'] as List).map((item) => MetaData.fromJson(item)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _json = new Map<String, dynamic>();
    _json['id'] = id;
    _json['name'] = name;
    _json['price'] = price;
    _json['regular_price'] = regular;
    _json['sale_price'] = sale;
//    _json['image'][0] = image.toJson();
//    _json['data'] = data.toJson();
    return _json;
  }
}