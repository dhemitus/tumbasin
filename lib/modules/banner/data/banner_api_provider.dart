import 'dart:convert';
import 'package:flutter_playground_kodingworks/models/slide.dart';
import 'package:http/http.dart' as http;

class BannerApiProvider {
  String _url = 'https://dashboard.tumbasin.id/wp-json/wp/v2/media?media_category[]=39';

  Future<List<Slide>> fetchBanner() async {
    final _response  = await http.get(_url);

    if(_response.statusCode == 200) {
      print(_response.statusCode);
      final _responseString = jsonDecode(_response.body) as List;
      List<Slide> _slides = _responseString.map((item) => Slide.fromJson(item)).toList();
      print(_slides.first.image.source);
      return _slides;
    } else {
      throw Exception('failed to load slide');
    }
  }
}