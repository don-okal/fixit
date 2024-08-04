import 'package:fixit/core/utils/constant.dart';
import 'package:fixit/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomFaceBookButton extends StatelessWidget {
  const CustomFaceBookButton({
    super.key,
    required this.title,
    required this.onPressed,
    required this.image,
  });

  final void Function()? onPressed;
  final String title, image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(Colors.white),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(
                color: Colors.black.withOpacity(0.1),
                width: 1.5,
              ),
            ),
          ),
        ),
        onPressed: onPressed,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0.w),
          child: Row(
            children: [
              Text(
                title,
                style: Styles.textStyle14.copyWith(
                    fontWeight: FontWeight.w600, color: kPrimaryColor),
              ),
              const Spacer(),
              Image.asset(
                image,
                height: 30.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
