import 'package:fixit/core/utils/styles.dart';
import 'package:fixit/core/widgets/custom_button.dart';
import 'package:fixit/core/widgets/custom_form_text_field.dart';
import 'package:fixit/features/auth/presentation/views/technical/technical_data.dart';
import 'package:fixit/features/auth/presentation/widgets/back_icon.dart';
import 'package:fixit/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CreateTechnicalAccount extends StatelessWidget {
  const CreateTechnicalAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50.h,
              ),
              Row(
                children: [
                  const BackIcon(),
                  const Spacer(),
                  Text(
                    S.of(context).technical,
                    style: Styles.textStyle21,
                  ),
                  const Spacer(),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                S.of(context).createAccount,
                style: Styles.textStyle21,
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                S.of(context).enterTheRequiredDataBelow,
                style: Styles.textStyle14,
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormField(
                hint: S.of(context).enterYourNameHere,
                isLast: false,
                title: S.of(context).fullName,
                obscure: false,
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormField(
                hint: S.of(context).enterTheCraftProfession,
                isLast: false,
                title: S.of(context).enterYourJobHere,
                obscure: false,
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormField(
                hint: 'Mail@gmail.com',
                isLast: false,
                title: S.of(context).email,
                obscure: false,
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormField(
                hint: S.of(context).password,
                isLast: false,
                title: S.of(context).password,
                obscure: true,
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormField(
                hint: S.of(context).password,
                isLast: true,
                title: S.of(context).confirmPassword,
                obscure: true,
              ),
              SizedBox(
                height: 50.h,
              ),
              CustomButton(
                title: S.of(context).next,
                onPressed: () {
                  Get.to(
                    const TechnicalData(),
                  );
                },
                height: 55.h,
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
