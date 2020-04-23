part of 'banner_bloc.dart';

abstract class BannerState extends Equatable {
  const BannerState();
}

class BannerInitial extends BannerState {
  const BannerInitial();

  @override
  List<Slide>  get props => [];
}

class BannerLoading extends BannerState {
  const BannerLoading();

  @override
  List<Slide>  get props => [];
}

class BannerLoaded extends BannerState {
  final List<Slide> banner;
  const BannerLoaded(this.banner);

  @override
  List<Slide>  get props => banner;
}

class BannerError extends BannerState {
  final String message;
  const BannerError(this.message);

  @override
  List<String>  get props => [message];
}