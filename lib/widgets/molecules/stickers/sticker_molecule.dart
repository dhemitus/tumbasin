import 'package:flutter/material.dart';
import 'package:flutter_playground_kodingworks/widgets/atoms/atoms.dart';
import 'package:flutter_playground_kodingworks/shared/colors.dart' as AppColor;
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StikerDiscount extends StatelessWidget {
  final String text;

  StikerDiscount({this.text = ''});

  @override
  Widget build(BuildContext context) {
    return ButtonContainer(
        radius: BorderRadius.only(
          topLeft: Radius.circular(5.0.w),
          bottomRight: Radius.circular(5.0.w)
        ),
        height: 23.0.h,
        width: 66.0.w,
        color: AppColor.primarysecond,
        child: Button2Text(text, color: Colors.white,)
    );
  }
}