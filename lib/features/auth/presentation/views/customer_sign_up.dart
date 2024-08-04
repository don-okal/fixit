import 'package:fixit/core/utils/constant.dart';
import 'package:fixit/core/widgets/custom_button.dart';
import 'package:fixit/core/widgets/custom_form_text_field.dart';
import 'package:fixit/features/auth/presentation/views/create_customer_account.dart';
import 'package:fixit/features/auth/presentation/widgets/custom_divider.dart';
import 'package:fixit/features/auth/presentation/widgets/custom_facebook_button.dart';
import 'package:fixit/features/auth/presentation/widgets/logo.dart';
import 'package:fixit/features/auth/presentation/widgets/remember_me.dart';
import 'package:fixit/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Customer extends StatelessWidget {
  const Customer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Logo(),
              SizedBox(
                height: 55.h,
              ),
              CustomTextFormField(
                hint: 'Mail@gmail.com',
                isLast: false,
                title: S.of(context).email,
                obscure: false,
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomTextFormField(
                hint: S.of(context).password,
                isLast: true,
                title: S.of(context).password,
                obscure: true,
              ),
              SizedBox(
                height: 20.h,
              ),
              RememberMeCheckbox(),
              SizedBox(
                height: 50.h,
              ),
              CustomButton(
                title: S.of(context).login,
                onPressed: () {},
              ),
              SizedBox(
                height: 15.h,
              ),
              CustomButton(
                textColor: kPrimaryColor,
                color: Colors.white,
                title: S.of(context).createAccount,
                onPressed: () {
                  Get.to(
                    const CreateCustomerAccount(),
                  );
                },
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: const CustomDivider(),
              ),
              CustomFaceBookButton(
                title: S.of(context).continueWithGoogle,
                onPressed: () {},
                image: 'assets/icons/Google.png',
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomFaceBookButton(
                title: S.of(context).continueWithFacebook,
                onPressed: () {},
                image: 'assets/icons/Facebook.png',
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomFaceBookButton(
                title: S.of(context).continueWithApple,
                onPressed: () {},
                image: 'assets/icons/Apple.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
