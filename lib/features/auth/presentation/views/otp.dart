import 'dart:async';

import 'package:fixit/core/utils/constant.dart';
import 'package:fixit/core/utils/styles.dart';
import 'package:fixit/core/widgets/custom_button.dart';
import 'package:fixit/features/auth/presentation/widgets/back_icon.dart';
import 'package:fixit/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Otp extends StatefulWidget {
  const Otp({super.key, required this.pageName, required this.onPressed});
  final String pageName;
  final void Function() onPressed;
  @override
  OtpState createState() => OtpState();
}

class OtpState extends State<Otp> {
  late Timer _timer;
  int _start = 240;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_start == 0) {
        setState(() {
          timer.cancel();
        });
      } else {
        setState(() {
          _start--;
        });
      }
    });
  }

  String get timerText {
    final minutes = (_start ~/ 60).toString().padLeft(2, '0');
    final seconds = (_start % 60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50.h),
            const BackIcon(),
            SizedBox(height: 40.h),
            Text(
              widget.pageName,
              style: Styles.textStyle21,
            ),
            SizedBox(height: 20.h),
            Text(
              S.of(context).enterOtpCode,
              style: Styles.textStyle14,
            ),
            SizedBox(height: 20.h),
            Directionality(
              textDirection: TextDirection.ltr,
              child: PinCodeTextField(
                keyboardType: TextInputType.number,
                appContext: context,
                length: 6,
                cursorHeight: 19,
                enableActiveFill: true,
                textStyle: TextStyle(
                  fontSize: 20.sp,
                ),
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  fieldWidth: 50.h,
                  fieldHeight: 50.h,
                  inactiveColor: const Color(0xffc4c4c4),
                  selectedColor: kPrimaryColor,
                  activeFillColor: const Color(0xffc4c4c4),
                  selectedFillColor: Colors.white,
                  inactiveFillColor: Colors.white,
                  borderWidth: 1,
                  borderRadius: BorderRadius.circular(8),
                ),
                onChanged: ((value) {}),
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  S.of(context).codeTimer,
                  style: Styles.textStyle14.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 5.w),
                Text(
                  timerText,
                  style: Styles.textStyle14.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const Spacer(),
            CustomButton(
              title: S.of(context).send,
              onPressed: widget.onPressed,
            ),
            SizedBox(height: 40.h),
          ],
        ),
      ),
    );
  }
}
