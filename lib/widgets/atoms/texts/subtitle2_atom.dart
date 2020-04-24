import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Subtitle2Text extends StatelessWidget {
  final String text;
  final TextAlign align;
  final Color color;
  Subtitle2Text({Key key,this.align, this.text, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) => Text(
    text,
    style: GoogleFonts.montserrat(
      color: color == null ? Colors.black : color,
      fontSize: ScreenUtil().setSp(11.0),
      fontStyle: FontStyle.normal,
      letterSpacing: ScreenUtil().setSp(0.2),
      fontWeight: FontWeight.w600,
      height: ScreenUtil().setSp(13.0),
    ),
    textAlign: align,
  );
}