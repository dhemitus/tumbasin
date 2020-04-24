import 'package:flutter/material.dart';
import 'package:flutter_playground_kodingworks/widgets/atoms/atoms.dart';
import 'package:flutter_playground_kodingworks/shared/colors.dart' as AppColor;
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryButton extends StatelessWidget {
  final Function onTap;
  final String text;

  CategoryButton({this.onTap, this.text = ''});

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
              'https://picsum.photos/250?image=9',
              height: 36.0,
              fit: BoxFit.fitHeight,
            )
          ),
          Button1Text(text, color: AppColor.grey,)
        ],
      ),
    );
  }
}