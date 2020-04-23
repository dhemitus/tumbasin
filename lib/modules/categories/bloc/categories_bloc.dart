import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_playground_kodingworks/models/menu_category.dart';
import 'package:flutter_playground_kodingworks/modules/categories/categories.dart';

part 'categories_event.dart';
part 'categories_state.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  CategoriesRepository _repo = CategoriesRepository();

  @override
  CategoriesState get initialState => CategoriesInitial();

  @override
  Stream<CategoriesState> mapEventToState(CategoriesEvent event) async* {
    yield CategoriesLoading();

    try {
      if(event is CategoriesSelectEvent) {
        List<MenuCategory> _categories = await _repo.fetchCategories();
        yield CategoriesLoaded(_categories);
      }
    } catch (_) {
      yield CategoriesError('Couldn\'t fetch categories');
    }
  }
}