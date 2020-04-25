import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarouselContainer extends StatelessWidget {
  final List<NetworkImage> _slides;

  CarouselContainer(this._slides);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0.h),
      child: Center(
        child: SizedBox(
          height: 100.0.h,
          width: 330.0.w,
          child: Carousel(
            boxFit: BoxFit.cover,
            borderRadius: true,
            radius: Radius.circular(5.0.w),
            autoplay: true,
            animationDuration: Duration(milliseconds: 300),
            dotSize: 5.0.w,
            dotIncreasedColor: Colors.white,
            dotBgColor: Colors.transparent,
            dotPosition: DotPosition.bottomLeft,
            dotVerticalPadding: 10.0.w,
            showIndicator: true,
            indicatorBgPadding: 7.0.w,
            images: _slides,
          )
        ),
      ),
    );
  }
}