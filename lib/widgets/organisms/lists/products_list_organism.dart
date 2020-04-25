import 'package:flutter/material.dart';
import 'package:flutter_playground_kodingworks/models/product.dart';
import 'package:flutter_playground_kodingworks/widgets/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_playground_kodingworks/shared/colors.dart' as AppColor;

class ProductsList extends StatelessWidget {
  final List<Product> products;

  ProductsList(this.products);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 15.0.w, right: 15.0.w, top: 15.0.h, bottom: 24.0.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              H5Text('Product Bestseller'),
              Button2Text('Lihat Semua', color: AppColor.primarysecond,)
            ],
          ),
        ),
        ListView.builder(
          physics: ScrollPhysics(),
          shrinkWrap: true,
          itemCount: products.length,
          itemBuilder: (context, index) {
            Product _item = products[index];
            return ItemTile(_item);
          },
        ),
      ],
    );
  }
}