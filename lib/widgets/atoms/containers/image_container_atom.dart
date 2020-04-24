import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageContainer extends StatelessWidget {
  final Widget child;
  final Color color;
  final BorderRadius radius;
  final double width;
  final double height;
  final String image;

  ImageContainer({this.width, this.height, this.child, this.color = Colors.white, this.radius, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.w,
      height: height.h,
      alignment: Alignment.topLeft,
      child: child,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(image)
        ),
        color: color,
        shape: BoxShape.rectangle,
        borderRadius: radius,
      ),
    );
  }
}