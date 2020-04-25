import 'package:flutter/material.dart';
import 'package:flutter_playground_kodingworks/widgets/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_playground_kodingworks/shared/colors.dart' as AppColor;
import 'package:flutter_playground_kodingworks/shared/assets.dart' as AppAsset;

class HeaderCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0.w),
      child: CardContainer(
        radius: BorderRadius.circular(5.0.w),
//      height: 105.0.w,
//      width: 330.0.h,
        color: Colors.white,
        shadow: <BoxShadow> [
          BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 05.0,
              offset: Offset(0.0, 5.0)
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
                      Subtitle2Text('Pasar Gunung Pati ', color: AppColor.verydarkgrey,),
                      Body2Text('1,3 Km', color: AppColor.grey,),
                    ],
                  ),
                  PrimaryButton(text: 'GANTI',),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0.h, bottom: 16.0.h),
                child: LineContainer(color: AppColor.darkwhite,),
              ),
              Row(
                children: <Widget>[
                  Body1Text('Lokasi Anda: ', color: AppColor.palegrey,),
                  Body2Text('Jalan Diponegoro, No 12 Kadipiro, Semarang', color: AppColor.palegrey,),
                ],
              ),

            ]
          ),
        ),
      ),
    );
  }
}