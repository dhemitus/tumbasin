part of 'banner_bloc.dart';

abstract class BannerEvent extends Equatable {
  const BannerEvent();
}

class BannerSelectEvent extends BannerEvent {
  final List<Slide> banner;
  BannerSelectEvent({this.banner});

  @override
  List<Slide> get props => banner;
}