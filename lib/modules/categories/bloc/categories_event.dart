part of 'categories_bloc.dart';

abstract class CategoriesEvent extends Equatable {
  const CategoriesEvent();
}

class CategoriesSelectEvent extends CategoriesEvent {
  final List<MenuCategory> categories;
  CategoriesSelectEvent({this.categories});

  @override
  List<MenuCategory> get props => categories;
}