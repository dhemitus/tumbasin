import 'package:flutter/material.dart';
import 'package:flutter_playground_kodingworks/widgets/widgets.dart';
import 'package:flutter_playground_kodingworks/shared/colors.dart' as AppColor;
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryButton extends StatelessWidget {
  final Function onTap;
  final String text;
  final String image;

  CategoryButton({this.onTap, this.text = '', this.image});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(context),
      child: Column(
        children: <Widget>[
          ButtonContainer(
            radius: BorderRadius.circular(10.0.w),
            height: 64.0,
            width: 60.0,
            color: AppColor.primarythird.withOpacity(0.1),
            child: Image.network(
              image,
              height: 36.0,
              fit: BoxFit.fitHeight,
            )
          ),
          Body1Text(text, color: AppColor.grey,)
        ],
      ),
    );
  }
}