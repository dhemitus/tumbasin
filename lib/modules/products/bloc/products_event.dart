part of 'products_bloc.dart';

abstract class ProductsEvent extends Equatable {
  const ProductsEvent();
}

class ProductsSelectEvent extends ProductsEvent {
  final List<Product> products;
  ProductsSelectEvent({this.products});

  @override
  List<Product> get props => products;
}