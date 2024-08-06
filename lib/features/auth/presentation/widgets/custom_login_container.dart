import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomLoginContainer extends StatelessWidget {
  const CustomLoginContainer({
    super.key,
    required this.image,
    required this.onTap,
  });
  final String image;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 55.h,
        width: 70.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        child: Center(
          child: Image.asset(
            image,
            height: 35.h,
          ),
        ),
      ),
    );
  }
}
