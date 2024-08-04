import 'package:fixit/core/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class BackIcon extends StatelessWidget {
  const BackIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
          padding: const EdgeInsets.all(0),
          onPressed: () {
            Get.back();
          },
          icon: Localizations.localeOf(context).languageCode == 'ar'
              ? SvgPicture.asset(
                  'assets/icons/arrow-circle-right.svg',
                  height: 30.h,
                )
              : Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationY(
                    3.14159,
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/arrow-circle-right.svg',
                    // ignore: deprecated_member_use
                    color: kPrimaryColor,
                    height: 35.h,
                    width: 35.h,
                  ),
                ),
        ),
      ],
    );
  }
}
