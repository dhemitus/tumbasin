import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Body1Text extends StatelessWidget {
  final String text;
  final TextAlign align;
  final Color color;
  Body1Text(this.text, {Key key,this.align, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) => Text(
    text,
    style: GoogleFonts.montserrat(
      color: color == null ? Colors.black : color,
      fontSize: ScreenUtil().setSp(10.0),
      fontStyle: FontStyle.normal,
      letterSpacing: ScreenUtil().setSp(0.2),
      fontWeight: FontWeight.w600,
    ),
    textAlign: align,
  );
}