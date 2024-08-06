import 'dart:io';

import 'package:fixit/core/utils/constant.dart';
import 'package:fixit/core/utils/styles.dart';
import 'package:fixit/core/widgets/custom_button.dart';
import 'package:fixit/features/auth/controller/technical_data_controller.dart';
import 'package:fixit/features/auth/presentation/views/new_password_done.dart';
import 'package:fixit/features/auth/presentation/widgets/back_icon.dart';
import 'package:fixit/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../otp.dart';

class TechnicalData extends StatelessWidget {
  const TechnicalData({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TechnicalDataController());

    Widget buildImagePicker(String title, Rx<XFile?> imageFile,
        {bool isRequired = true}) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
          ),
          if (isRequired)
            Text(
              '*',
              style: TextStyle(color: Colors.red, fontSize: 16.sp),
            ),
          const Spacer(),
          GestureDetector(
            onTap: () => controller.pickImage(imageFile),
            child: Container(
              width: 150.w,
              height: 70.h,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Colors.grey.withOpacity(0.3),
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Obx(
                () => imageFile.value == null
                    ? Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/icons/camera.svg',
                              height: 30.h,
                            ),
                            Text(
                              S.of(context).addImage,
                              style: Styles.textStyle14.copyWith(
                                color: const Color(0xff2D3633).withOpacity(0.2),
                              ),
                            ),
                          ],
                        ),
                      )
                    : Opacity(
                        opacity: 0.8,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.file(
                            File(
                              imageFile.value!.path,
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
              ),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50.h),
              const BackIcon(),
              SizedBox(height: 20.h),
              Text(
                S.of(context).createAccount,
                style: Styles.textStyle21.copyWith(fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 15.h),
              Text(
                S.of(context).enterTheRequiredDataBelow,
                style: Styles.textStyle14,
              ),
              SizedBox(height: 15.h),
              buildImagePicker(
                S.of(context).frontIdImage,
                controller.frontIdImage,
              ),
              SizedBox(height: 15.h),
              buildImagePicker(
                S.of(context).backIdImage,
                controller.backIdImage,
              ),
              SizedBox(height: 15.h),
              buildImagePicker(
                S.of(context).skillCertificateImage,
                controller.skillCertificateImage,
                isRequired: false,
              ),
              SizedBox(height: 15.h),
              buildImagePicker(
                S.of(context).personalPhotoImage,
                controller.personalPhotoImage,
              ),
              SizedBox(height: 15.h),
              buildImagePicker(
                S.of(context).criminalRecordImage,
                controller.criminalRecordImage,
              ),
              SizedBox(height: 25.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    S.of(context).nationalId,
                    style: Styles.textStyle16
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '*',
                    style: TextStyle(color: Colors.red, fontSize: 14.sp),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 230.w,
                    child: TextField(
                      textAlign: TextAlign.center,
                      controller: controller.nationalIdController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
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
                        hintText: S.of(context).enterNationalId,
                        hintStyle: Styles.textStyle14.copyWith(),
                      ),
                      onChanged: (value) => controller.validateForm(),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 75.h),
              Obx(
                () => CustomButton(
                  title: S.of(context).next,
                  onPressed: controller.isFormValid.value
                      ? () {
                          Get.to(
                            Otp(
                              pageName: S.of(context).createAccount,
                              onPressed: () {
                                Get.to(
                                  NewPasswordDone(
                                    pageDone: S
                                        .of(context)
                                        .accountSuccessfullyCreated,
                                  ),
                                );
                              },
                            ),
                          );
                        }
                      : null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
