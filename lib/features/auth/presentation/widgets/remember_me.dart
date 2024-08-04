import 'package:fixit/core/utils/constant.dart';
import 'package:fixit/core/utils/styles.dart';
import 'package:fixit/features/auth/contoller/remember_me_controller.dart';
import 'package:fixit/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class RememberMeCheckbox extends StatelessWidget {
  final RememberMeController controller = Get.put(RememberMeController());

  RememberMeCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Obx(
          () => Theme(
            data: Theme.of(context).copyWith(
              checkboxTheme: CheckboxThemeData(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
            child: Transform.scale(
              scale: 1.5,
              child: Checkbox(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                activeColor: kPrimaryColor,
                side: BorderSide(
                  width: 1.5,
                  color: Colors.black.withOpacity(0.1),
                  style: BorderStyle.solid,
                ),
                value: controller.isChecked.value,
                onChanged: (bool? value) {
                  controller.toggleCheckbox();
                },
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        Text(
          S.of(context).rememberMe,
          style: Styles.textStyle14.copyWith(
            color: Colors.black.withOpacity(0.5),
            fontWeight: FontWeight.w600,
          ),
        ),
        const Spacer(),
        Text(
          S.of(context).forgotPassword,
          style: Styles.textStyle14.copyWith(
            color: Colors.black.withOpacity(0.5),
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
