import 'package:flutter_playground_kodingworks/models/image_slide.dart';

class Slide {
  int id;
  String link;
  ImageSlide image;

  Slide({
    this.id, 
    this.link,
    this.image
  });


  Slide.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    link = json['link'];
    image = ImageSlide.fromJson(json['guid']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _json = new Map<String, dynamic>();
    _json['id'] = id;
    _json['link'] = link;
    _json['guid'] = image.toJson();
    return _json;
  }

}