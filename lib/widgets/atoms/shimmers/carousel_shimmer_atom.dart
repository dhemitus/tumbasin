import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_playground_kodingworks/shared/colors.dart' as AppColor;

class CarouselShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColor.verypalegrey,
      highlightColor: AppColor.darkwhite,
      enabled: true,
      child: Container(
        height: 100.0.h,
        width: 330.0.w,
        color: AppColor.verydarkgrey,
      )
    );
  }
}