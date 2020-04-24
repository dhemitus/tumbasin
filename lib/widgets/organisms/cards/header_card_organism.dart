import 'package:flutter/material.dart';
import 'package:flutter_playground_kodingworks/widgets/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_playground_kodingworks/shared/colors.dart' as AppColor;
import 'package:flutter_playground_kodingworks/shared/assets.dart' as AppAsset;

class HeaderCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CardContainer(
      radius: BorderRadius.circular(5.0.w),
      height: 105.0.w,
      width: 330.0.h,
      color: Colors.white,
      shadow: <BoxShadow> [
        new BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 05.0,
            offset: new Offset(0.0, 5.0)
        )
      ],
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.0.w, vertical: 11.0.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget> [
            Body1Text('Kamu Belanja Di:', color: AppColor.darkgrey,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    AppAsset.market,
                    Subtitle2Text('Pasar Gunung Pati ', color: AppColor.darkgrey,),
                    Body2Text('1,3 Km', color: AppColor.darkgrey,),
                  ],
                ),
                PrimaryButton(text: 'GANTI',),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 16.0),
              child: LineContainer(color: AppColor.darkwhite,),
            ),
            Row(
              children: <Widget>[
                Body1Text('Lokasi Anda: ', color: AppColor.palegrey,),
                Body2Text('Jalan Diponegoro', color: AppColor.palegrey,),
              ],
            ),

          ]
        ),
      ),
    );
  }
}