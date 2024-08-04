import 'package:fixit/core/utils/constant.dart';
import 'package:fixit/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(top: 75.h),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: const AssetImage(logo),
              height: 65.h,
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(
              'Fixit',
              style: Styles.textStyle48,
            ),
          ],
        ),
      ),
    );
  }
}
