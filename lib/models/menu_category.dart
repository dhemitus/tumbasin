import 'package:flutter_playground_kodingworks/models/image_source.dart';

class MenuCategory {
  int id;
  String name;
  ImageSource image;

  MenuCategory({
    this.id, 
    this.name,
    this.image
  });


  MenuCategory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = ImageSource.fromJson(json['image']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _json = new Map<String, dynamic>();
    _json['id'] = id;
    _json['name'] = name;
    _json['image'] = image.toJson();
    return _json;
  }

}