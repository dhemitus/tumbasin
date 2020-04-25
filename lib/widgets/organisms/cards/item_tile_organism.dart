import 'package:flutter/material.dart';
import 'package:flutter_playground_kodingworks/widgets/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_playground_kodingworks/shared/colors.dart' as AppColor;

class ItemTile extends StatelessWidget {
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
                    child: ImageCard(image: 'https://picsum.photos/250?image=9', text: 'Disc 15%',),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      H6Text('Telur Ayam Negri', color: AppColor.darkgrey,),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0.h, bottom: 10.0.h),
                        child: Caption1Text('Rp. 6.500', color: AppColor.verypalegrey,),
                      ),
                      Row(
                        children: <Widget>[
                          Caption2Text('Rp. 75.00', color: AppColor.orange,),
                          OverlineText('/500 gram', color: AppColor.verypalegrey,)
                        ]
                      ),
                    ],  
                  ),
                ],
              ),
              Container(
                height: 85.0.h,
                alignment: Alignment.bottomCenter,
                child: SecondaryButton(text: 'Tambahkan',)
              ),
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