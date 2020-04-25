import 'package:flutter/material.dart';
import 'package:flutter_playground_kodingworks/widgets/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_playground_kodingworks/shared/colors.dart' as AppColor;
import 'package:flutter_playground_kodingworks/shared/assets.dart' as AppAsset;

class MiniHeaderCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CardContainer(
      padding: EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 15.0.h),
      radius: BorderRadius.only(
        bottomLeft: Radius.circular(5.0.w),
        bottomRight: Radius.circular(5.0.w),
      ),
      color: Colors.white,
      shadow: <BoxShadow> [
        BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 05.0,
            offset: Offset(0.0, 5.0)
        )
      ],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              AppAsset.market,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Subtitle2Text('Pasar Gunung Pati ', color: AppColor.verydarkgrey,),
                    Body2Text('1,3Km dari locais anda', color: AppColor.palegrey,),
                  ],
                ),
              ),
              AppAsset.down
            ],
          ),
          AppAsset.search,
        ],
      ),
    );
  }
}