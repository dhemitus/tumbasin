import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_playground_kodingworks/models/tab_content.dart';
import 'package:flutter_playground_kodingworks/widgets/widgets.dart';
import 'package:flutter_playground_kodingworks/shared/colors.dart' as AppColor;

class TabBottomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.0.h,
      child: BottomAppBar(
        child: Padding(
          padding: EdgeInsets.only(top: 10.0.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: tabData.map((TabIcon item) => TabButton(icon: item.icon, text: item.text, color: item.text == 'Belanja' ? AppColor.primarysecond : AppColor.verypalegrey, onTap: () =>{},)).toList()
          ),
        ),
      ),
    );
  }
}