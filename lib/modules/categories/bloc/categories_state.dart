part of 'categories_bloc.dart';

abstract class CategoriesState extends Equatable {
  const CategoriesState();
}

class CategoriesInitial extends CategoriesState {
  const CategoriesInitial();

  @override
  List<MenuCategory>  get props => [];
}

class CategoriesLoading extends CategoriesState {
  const CategoriesLoading();

  @override
  List<MenuCategory>  get props => [];
}

class CategoriesLoaded extends CategoriesState {
  final List<MenuCategory> categories;
  const CategoriesLoaded(this.categories);

  @override
  List<MenuCategory>  get props => categories;
}

class CategoriesError extends CategoriesState {
  final String message;
  const CategoriesError(this.message);

  @override
  List<String>  get props => [message];
}