import 'package:flutter/material.dart';
import 'package:flutter_playground_kodingworks/models/product.dart';
import 'package:flutter_playground_kodingworks/widgets/widgets.dart';
import 'package:flutter_playground_kodingworks/shared/shared.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_playground_kodingworks/shared/colors.dart' as AppColor;

class ItemTile extends StatelessWidget {
  final Product product;

  ItemTile(this.product);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.0.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget> [
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 13.0.w),
                    child: ImageCard(image: product.image.first.source, text: product.sale,),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      H6Text(product.name, color: AppColor.darkgrey,),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0.h, bottom: 10.0.h),
                        child: Caption1Text(priceFormat(double.parse(product.regular)), color: AppColor.verypalegrey,),
                      ),
                      Row(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Caption2Text(priceFormat(double.parse(product.price)) , color: AppColor.orange,),
                              OverlineText('/${product.data.first.value}', color: AppColor.verypalegrey,),
                            ],
                          ),
                          SecondaryButton(text: 'Tambahkan',)
                        ]
                      ),
                    ],  
                  ),
                ],
              ),
/*              Container(
                height: 85.0.h,
                alignment: Alignment.bottomCenter,
                child: SecondaryButton(text: 'Tambahkan',)
              ),*/
            ]
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 15.0.h, bottom: 15.0.h),
          child: LineContainer(color: AppColor.darkwhite,),
        ),
      ],
    );
  }
}