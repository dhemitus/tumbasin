import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Body2Text extends StatelessWidget {
  final String text;
  final TextAlign align;
  Body2Text({Key key,this.align, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) => Text(
    text,
    style: GoogleFonts.montserrat(
      color: Colors.black,
      fontSize: 10.0,
      fontStyle: FontStyle.normal,
      letterSpacing: 0.2,
      fontWeight: FontWeight.w500,
      height: 12.0,
    ),
    textAlign: align,
  );
}