import 'package:fixit/core/utils/styles.dart';
import 'package:fixit/core/widgets/custom_button.dart';
import 'package:fixit/core/widgets/custom_form_text_field.dart';
import 'package:fixit/features/auth/presentation/views/new_password_done.dart';
import 'package:fixit/features/auth/presentation/widgets/back_icon.dart';
import 'package:fixit/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50.h),
            const BackIcon(),
            SizedBox(height: 40.h),
            Text(
              S.of(context).createNewPassword,
              style: Styles.textStyle21,
            ),
            SizedBox(height: 20.h),
            Text(
              S.of(context).enterYourNewPassword,
              style: Styles.textStyle14,
            ),
            SizedBox(height: 20.h),
            CustomTextFormField(
              hint: S.of(context).password,
              isLast: false,
              title: S.of(context).password,
              obscure: true,
            ),
            SizedBox(height: 20.h),
            CustomTextFormField(
              hint: S.of(context).password,
              isLast: true,
              title: S.of(context).confirmPassword,
              obscure: true,
            ),
            const Spacer(),
            CustomButton(
              title: S.of(context).save,
              onPressed: () {
                Get.to(
                  const NewPasswordDone(),
                );
              },
            ),
            SizedBox(height: 40.h),
          ],
        ),
      ),
    );
  }
}
