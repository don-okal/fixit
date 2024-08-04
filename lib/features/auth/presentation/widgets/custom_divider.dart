import 'package:fixit/core/utils/constant.dart';
import 'package:fixit/core/utils/styles.dart';
import 'package:fixit/generated/l10n.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(
            color: Colors.black.withOpacity(0.1),
            thickness: 1.5,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            S.of(context).or,
            style: Styles.textStyle14.copyWith(
              color: kPrimaryColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Expanded(
          child: Divider(
            color: Colors.black.withOpacity(0.1),
            thickness: 1.5,
          ),
        ),
      ],
    );
  }
}
