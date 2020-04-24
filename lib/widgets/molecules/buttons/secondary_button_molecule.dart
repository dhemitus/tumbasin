import 'package:flutter/material.dart';
import 'package:flutter_playground_kodingworks/widgets/atoms/atoms.dart';
import 'package:flutter_playground_kodingworks/shared/colors.dart' as AppColor;
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecondaryButton extends StatelessWidget {
  final Function onTap;
  final String text;

  SecondaryButton({this.onTap, this.text = ''});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(context),
      child: ButtonContainer(
        radius: BorderRadius.circular(5.0.w),
        height: 30.0,
        width: 87.0,
        color: AppColor.primary,
        child: Button2Text(text, color: Colors.white,)
      ),
    );
  }
}