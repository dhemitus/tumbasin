import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_playground_kodingworks/shared/colors.dart' as AppColor;

class CategoriesShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal : 15.0.w, vertical: 15.0.h),
      child: Shimmer.fromColors(
        baseColor: AppColor.verypalegrey,
        highlightColor: AppColor.darkwhite,
        enabled: true,
        child: GridView.builder(
          physics: ScrollPhysics(),
          shrinkWrap: true,
          itemCount: 7,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            childAspectRatio: 0.75,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0
          ),
          itemBuilder: (context, index) {
            return Container(
              height: 70.0.h,
              width: 60.0.w,
              color: AppColor.verydarkgrey,
            );
          }
        )
      ),
    );
  }
}