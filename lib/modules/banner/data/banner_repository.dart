import 'package:flutter_playground_kodingworks/models/slide.dart';
import 'package:flutter_playground_kodingworks/modules/banner/banner.dart';

class BannerRepository {
  BannerApiProvider _api = BannerApiProvider();

  Future<List<Slide>> fetchBanner() => _api.fetchBanner();
}