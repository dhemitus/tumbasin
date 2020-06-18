import 'package:flutter/material.dart';
import 'package:flutter_playground_kodingworks/shared/colors.dart' as AppColor;
import 'package:flutter_playground_kodingworks/shared/assets.dart' as AppAsset;
import 'package:flutter_playground_kodingworks/widgets/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class InputSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CardContainer(
      padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 5.0.h),
      height: 40.0.w,
      color: Colors.white,
      radius: BorderRadius.circular(40.0.w),
      shadow: <BoxShadow> [
        BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 03.0,
            offset: Offset(0.0, 2.0)
        )
      ],
      child: TextField(
        cursorColor: AppColor.palegrey,
        decoration: InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          hintText: "Cari sayur, bumbu dapur, lauk pauk..",
          hintStyle: GoogleFonts.montserrat(
            color: AppColor.palegrey,
            fontSize: ScreenUtil().setSp(12.0),
            fontStyle: FontStyle.normal,
            letterSpacing: ScreenUtil().setSp(0.2),
            fontWeight: FontWeight.w500,
          ),
          prefixIcon: Container(
            padding: EdgeInsets.symmetric(horizontal: 5.0.w, vertical: 5.0.h),
            child: AppAsset.search
          )
        ),
        style: GoogleFonts.montserrat(
          color: AppColor.grey,
          fontSize: ScreenUtil().setSp(12.0),
          fontStyle: FontStyle.normal,
          letterSpacing: ScreenUtil().setSp(0.2),
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}