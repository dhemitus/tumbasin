import 'package:flutter/material.dart';
import 'package:flutter_playground_kodingworks/widgets/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabButton extends StatelessWidget {
  final Function onTap;
  final String text;
  final Widget icon;
  final Color color;

  TabButton({this.onTap, this.text = '', this.icon, this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(context),
      child: Column(
        children: <Widget>[
          icon,
          Padding(
            padding: EdgeInsets.only(top: 6.0.w),
            child: Button1Text(text, color: color,),
          )
        ],
      ),
    );
  }
}