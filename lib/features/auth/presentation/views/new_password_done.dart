import 'package:fixit/core/utils/styles.dart';
import 'package:fixit/core/widgets/custom_button.dart';
import 'package:fixit/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewPasswordDone extends StatelessWidget {
  const NewPasswordDone({super.key, required this.pageDone, this.onTap});
  final String pageDone;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsetsDirectional.only(
            top: 260.h,
            start: 16.w,
            end: 16.w,
          ),
          child: Column(
            children: [
              Image(
                height: 254.h,
                image: const AssetImage(
                  'assets/images/newasswordDone.png',
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                pageDone,
                style: Styles.textStyle21,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                S
                    .of(context)
                    .youCanBrowseTheApplicationNowWithTheLatestOffersAndDiscounts,
                style: Styles.textStyle14,
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              CustomButton(
                title: S.of(context).startNow,
                onPressed: onTap,
                height: 55.h,
              ),
              SizedBox(height: 40.h),
            ],
          ),
        ),
      ),
    );
  }
}
