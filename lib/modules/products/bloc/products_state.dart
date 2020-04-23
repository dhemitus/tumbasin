part of 'products_bloc.dart';

abstract class ProductsState extends Equatable {
  const ProductsState();
}

class ProductsInitial extends ProductsState {
  const ProductsInitial();

  @override
  List<Product>  get props => [];
}

class ProductsLoading extends ProductsState {
  const ProductsLoading();

  @override
  List<Product>  get props => [];
}

class ProductsLoaded extends ProductsState {
  final List<Product> products;
  const ProductsLoaded(this.products);

  @override
  List<Product>  get props => products;
}

class ProductsError extends ProductsState {
  final String message;
  const ProductsError(this.message);

  @override
  List<String>  get props => [message];
}