import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LineContainer extends StatelessWidget {
  final Color color;
  final double width;
  final double height;

  LineContainer({this.width = 200.0 , this.height = 1.0, this.color = Colors.yellow});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.w,
      height: height.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.rectangle,
      ),
    );
  }
}