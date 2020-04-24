import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonContainer extends StatelessWidget {
  final Widget child;
  final Color color;
  final BorderRadius radius;
  final double blur;
  final Offset offset;
  final double width;
  final double height;

  ButtonContainer({this.width, this.height, this.child, this.color = Colors.white, this.radius, this.blur = 0.0, this.offset});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width != null ? width.w : null,
      height: height.h,
      alignment: Alignment.center,
      child: child,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.rectangle,
        borderRadius: radius,
      ),
    );
  }
}