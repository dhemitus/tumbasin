import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_playground_kodingworks/models/slide.dart';
import 'package:flutter_playground_kodingworks/modules/banner/banner.dart';

part 'banner_event.dart';
part 'banner_state.dart';

class BannerBloc extends Bloc<BannerEvent, BannerState> {
  final BannerRepository _repo;

  BannerBloc(this._repo);
  @override
  BannerState get initialState => BannerInitial();

  @override
  Stream<BannerState> mapEventToState(BannerEvent event) async* {
    yield BannerLoading();
    print('trigger banner');

    try {
      if(event is BannerSelectEvent) {
        List<Slide> _categories = await _repo.fetchBanner();
        yield BannerLoaded(_categories);
      }
    } catch (_) {
      yield BannerError('Couldn\'t fetch banner');
    }
  }
}