import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardContainer extends StatelessWidget {
  final Widget child;
  final Color color;
  final BorderRadius radius;
  final double width;
  final double height;
  final List<BoxShadow> shadow;
  final EdgeInsets padding;

  CardContainer({this.width, this.height, this.child, this.color = Colors.white, this.radius, this.shadow, this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      width: width != null ? width.w : null,
      height: height != null ? height.h : null,
      alignment: Alignment.center,
      child: child,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.rectangle,
        borderRadius: radius,
        boxShadow: shadow
      ),
    );
  }
}