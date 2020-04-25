import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_playground_kodingworks/models/product.dart';
import 'package:flutter_playground_kodingworks/modules/products/products.dart';

part 'products_event.dart';
part 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsRepository _repo = ProductsRepository();

  @override
  ProductsState get initialState => ProductsInitial();

  @override
  Stream<ProductsState> mapEventToState(ProductsEvent event) async* {
    yield ProductsLoading();

    try {
      if(event is ProductsSelectEvent) {
        List<Product> _products = await _repo.fetchProducts();
        yield ProductsLoaded(_products);
      }
    } catch (_) {
      yield ProductsError('Couldn\'t fetch banner');
    }
  }
}