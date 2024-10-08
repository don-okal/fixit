import 'package:firebase_auth/firebase_auth.dart';
import 'package:fixit/core/utils/constant.dart';
import 'package:fixit/core/widgets/custom_button.dart';
import 'package:fixit/core/widgets/custom_form_text_field.dart';
import 'package:fixit/features/auth/controller/facebook_method_log_in.dart';
import 'package:fixit/features/auth/controller/google_method_log_in.dart';
import 'package:fixit/features/auth/presentation/views/customer/create_customer_account.dart';
import 'package:fixit/features/auth/presentation/widgets/custom_divider.dart';
import 'package:fixit/features/auth/presentation/widgets/custom_facebook_button.dart';
import 'package:fixit/features/auth/presentation/widgets/logo.dart';
import 'package:fixit/features/auth/presentation/widgets/remember_me.dart';
import 'package:fixit/features/home/presentation/widgets/curved_navigation_bar.dart';
import 'package:fixit/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomerLogIn extends StatelessWidget {
  const CustomerLogIn({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthService authService = AuthService();

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
                onPressed: () {
                  Get.to(
                    const CustomNavigationBar(),
                  );
                },
                height: 55.h,
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
                height: 55.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: const CustomDivider(
                  color: kPrimaryColor,
                ),
              ),
              CustomFaceBookButton(
                title: S.of(context).continueWithGoogle,
                onPressed: () async {
                  User? user = await authService.signInWithGoogle();
                  if (user != null) {
                    print('Signed in: ${user.displayName}');
                  } else {
                    print('Sign in failed');
                  }
                },
                image: 'assets/icons/Google.png',
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomFaceBookButton(
                title: S.of(context).continueWithFacebook,
                onPressed: () {
                  signInWithFacebook(context);
                },
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
              SizedBox(
                height: 40.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
