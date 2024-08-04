import 'package:fixit/core/utils/styles.dart';
import 'package:fixit/core/widgets/custom_button.dart';
import 'package:fixit/core/widgets/custom_form_text_field.dart';
import 'package:fixit/features/auth/presentation/views/otp.dart';
import 'package:fixit/features/auth/presentation/widgets/back_icon.dart';
import 'package:fixit/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50.h,
            ),
            const BackIcon(),
            SizedBox(
              height: 20.h,
            ),
            Text(
              S.of(context).forgotPassword,
              style: Styles.textStyle21,
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              S.of(context).enterYourEmailAddress,
              style: Styles.textStyle14,
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomTextFormField(
              hint: 'Mail@gmail.com',
              isLast: true,
              title: S.of(context).email,
              obscure: false,
            ),
            const Spacer(),
            CustomButton(
              title: S.of(context).send,
              onPressed: () {
                Get.to(
                  const Otp(),
                );
              },
            ),
            SizedBox(
              height: 40.h,
            ),
          ],
        ),
      ),
    );
  }
}
