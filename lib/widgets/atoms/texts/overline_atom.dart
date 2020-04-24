import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OverlineText extends StatelessWidget {
  final String text;
  final TextAlign align;
  OverlineText({Key key,this.align, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) => Text(
    text,
    style: GoogleFonts.lato(
      color: Colors.black,
      fontSize: 12.0,
      fontStyle: FontStyle.normal,
      letterSpacing: 0.2,
      fontWeight: FontWeight.w800,
      height: 14.0,
    ),
    textAlign: align,
  );
}