import 'package:flutter/material.dart';
import 'package:flutter_playground_kodingworks/widgets/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopCard extends StatelessWidget {
  final bool hide;
  TopCard(this.hide);

  @override
  Widget build(BuildContext context) {
    if(hide) {
      return MiniHeaderCard();
    } else {
      return Container(
        height: 195.h,
        child: Padding(
          padding: EdgeInsets.only(top: 33.0.h, left: 15.0.w, right: 15.0.w),
          child: Column(
            children: <Widget> [
              InputSearch(),
              Padding(
                padding: EdgeInsets.only(top: 18.0.h),
                child: HeaderCard(),
              ),
            ]
          ),
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topCenter,
            fit: BoxFit.fitWidth,
            image: AssetImage('assets/image/bg_new_96px.png')
          ),
          shape: BoxShape.rectangle,
        ),
      );
    }
  }
}