import 'package:fixit/core/utils/constant.dart';
import 'package:fixit/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.color = kPrimaryColor,
    this.textColor = const Color(0xffF6F6F9),
    this.borderColor = kPrimaryColor,
    required this.height,
  });

  final void Function()? onPressed;
  final String title;
  final Color? textColor;
  final Color? color;
  final Color? borderColor;
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(color),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(
                color: borderColor!,
                width: 2.0,
              ),
            ),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: Styles.textStyle16.copyWith(
            color: textColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
