import 'package:fixit/core/utils/constant.dart';
import 'package:fixit/core/utils/styles.dart';
import 'package:fixit/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        top: 35.h,
        start: 16.w,
        end: 16.w,
      ),
      child: Container(
        padding: EdgeInsets.zero,
        height: 60.h,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            16,
          ),
          border: Border.all(
            color: Colors.grey.withOpacity(0.3),
            width: 1.5,
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.only(
            start: 16.w,
            top: 8.h,
            bottom: 8.h,
          ),
          child: Row(
            children: [
              CircleAvatar(
                radius: 16.h,
                backgroundImage: const AssetImage(
                  'assets/images/test.jpg',
                ),
              ),
              SizedBox(
                width: 8.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    S.of(context).hello,
                    style: Styles.textStyle14.copyWith(
                      fontSize: 9.sp,
                    ),
                  ),
                  Text(
                    'Ahmed Okal',
                    style: Styles.textStyle16.copyWith(
                      fontSize: 9.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 16.w,
              ),
              SizedBox(
                width: 180.w,
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: const Icon(
                      Icons.search_rounded,
                      color: Color(0xffB0B0B0),
                    ),
                    filled: true,
                    fillColor: const Color(0xffECECEC),
                    contentPadding: EdgeInsetsDirectional.only(
                      top: 8.h,
                      bottom: 8.h,
                      start: 16.w,
                    ),
                    hintText: S.of(context).search,
                    hintStyle: Styles.textStyle14.copyWith(
                      color: const Color(0xffB0B0B0),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32),
                      borderSide: const BorderSide(
                        color: kPrimaryColor,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32),
                      borderSide: BorderSide(
                        color: Colors.grey.withOpacity(0.2),
                        width: 2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: kPrimaryColor,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
              ),
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_rounded,
                  color: kPrimaryColor,
                  size: 24.sp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
