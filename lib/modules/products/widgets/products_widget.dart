import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_playground_kodingworks/widgets/widgets.dart';
import 'package:flutter_playground_kodingworks/modules/products/products.dart';

class ProductsWiget extends StatefulWidget {
  @override
  _ProductsWigetState createState() => _ProductsWigetState();
}

class _ProductsWigetState extends State<ProductsWiget> {

  @override
  void initState() {
    super.initState();
    BlocProvider.of<ProductsBloc>(context).add(ProductsSelectEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsBloc, ProductsState>(
      builder: (BuildContext context, ProductsState state) {
        if(state is ProductsLoading) {
          return CarouselShimmer();
        } else if(state is ProductsLoaded) {
//          print(state.products);
          return ProductsList(state.products);
        } else {
          return CarouselShimmer();
        }
      }
    );
  }
}
