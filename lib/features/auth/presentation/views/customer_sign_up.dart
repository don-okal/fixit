import 'package:fixit/core/utils/styles.dart';
import 'package:fixit/features/auth/presentation/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Customer extends StatelessWidget {
  const Customer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Logo(),
            SizedBox(
              height: 100.h,
            ),
            Text(
              'data',
              style: Styles.textStyle16,
            ),
          ],
        ),
      ),
    );
  }
}
