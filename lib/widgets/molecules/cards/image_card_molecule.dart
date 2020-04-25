import 'package:flutter/material.dart';
import 'package:flutter_playground_kodingworks/widgets/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageCard extends StatelessWidget {
  final String image;
  final String text;

  ImageCard({this.image, this.text});

  @override
  Widget build(BuildContext context) {
    return ImageContainer(
      radius: BorderRadius.circular(5.0.w),
      width: 85.w,
      height: 80.h,
      image: image,
      child: StikerDiscount(text: text,),
    );
  }
}