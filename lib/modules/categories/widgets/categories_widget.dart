import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_playground_kodingworks/widgets/widgets.dart';
import 'package:flutter_playground_kodingworks/modules/categories/categories.dart';

class CategoriesWidget extends StatefulWidget {
  @override
  _CategoriesWidgetState createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {

  @override
  void initState() {
    super.initState();
    BlocProvider.of<CategoriesBloc>(context).add(CategoriesSelectEvent());
  }
    @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesBloc, CategoriesState>(
      builder: (BuildContext context, CategoriesState state) {
        if(state is CategoriesLoading) {
          return CategoriesShimmer();
        } else if(state is CategoriesLoaded) {
          return CategoriesList(state.categories);
        } else {
          return CategoriesShimmer();
        }
      }
    );
  }
}