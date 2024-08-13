import 'package:fixit/core/utils/constant.dart';
import 'package:fixit/core/widgets/custom_button.dart';
import 'package:fixit/core/widgets/custom_form_text_field.dart';
import 'package:fixit/features/auth/presentation/views/technical/create_technical_account.dart';
import 'package:fixit/features/auth/presentation/widgets/custom_divider.dart';
import 'package:fixit/features/auth/presentation/widgets/custom_login_container.dart';
import 'package:fixit/features/auth/presentation/widgets/logo.dart';
import 'package:fixit/features/auth/presentation/widgets/remember_me.dart';
import 'package:fixit/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Technical extends StatelessWidget {
  const Technical({super.key});

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
                height: 30.h,
              ),
              Container(
                height: 330.h,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    opacity: 0.95,
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'assets/images/technical for login.png',
                    ),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 80.h,
                    ),
                    CustomButton(
                      title: S.of(context).login,
                      onPressed: () {},
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
                          const CreateTechnicalAccount(),
                        );
                      },
                      height: 55.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      child: const CustomDivider(
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomLoginContainer(
                          image: 'assets/icons/Facebook.png',
                          onTap: () {},
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        CustomLoginContainer(
                          image: 'assets/icons/Apple.png',
                          onTap: () {},
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        CustomLoginContainer(
                          image: 'assets/icons/Google.png',
                          onTap: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
