import 'package:flutter_playground_kodingworks/models/slide.dart';
import 'package:flutter_playground_kodingworks/modules/banner/data/banner_api_provider.dart';

class BannerRepository {
  BannerApiProvider _api = BannerApiProvider();

  Future<List<Slide>> fetchBanner() => _api.fetchBanner();
}