import 'package:flutter/material.dart';
import 'package:flutter_playground_kodingworks/models/menu_category.dart';
import 'package:flutter_playground_kodingworks/widgets/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesList extends StatelessWidget {
  final List<MenuCategory> categories;
  CategoriesList(this.categories);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal : 15.0.w, vertical: 15.0.h),
      child: GridView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        itemCount: categories.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          childAspectRatio: 0.65,
          mainAxisSpacing: 14.0,
          crossAxisSpacing: 10.0
        ),
        itemBuilder: (context, index) {
          MenuCategory _item = categories[index];

          return CategoryButton(text: _item.name, image: _item.image.source,);
        }
      ),
    );
  }
}