import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_playground_kodingworks/shared/colors.dart' as AppColor;

class LineContainer extends StatelessWidget {
  final Color color;
  final double width;
  final double height;

  LineContainer({this.width = 200.0 , this.height = 1.0, this.color = AppColor.darkwhite});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.w,
      height: height.h,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.rectangle,
      ),
    );
  }
}