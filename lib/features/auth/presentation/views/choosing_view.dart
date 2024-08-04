import 'package:fixit/core/utils/styles.dart';
import 'package:fixit/core/widgets/custom_button.dart';
import 'package:fixit/features/auth/contoller/choosing_contoller.dart';
import 'package:fixit/features/auth/presentation/widgets/logo.dart';
import 'package:fixit/features/auth/presentation/widgets/user_kind.dart';
import 'package:fixit/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ChoosingView extends StatelessWidget {
  final ChoosingController controller = Get.put(ChoosingController());

  ChoosingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: Column(
          children: [
            const Logo(),
            SizedBox(
              height: 120.h,
            ),
            Text(
              S.of(context).chooseTheMembershipType,
              style: Styles.textStyle28,
            ),
            SizedBox(
              height: 45.h,
            ),
            Row(
              children: [
                Obx(() => UserKind(
                      onTap: () => controller.selectCustomerKind('customer'),
                      color: controller.selectedCustomerKind.value == 'customer'
                          ? Colors.blue
                          : const Color(0xff939DA4),
                      name: S.of(context).customer,
                      image: 'assets/images/customer.png',
                      opacity: controller.selectedCustomerKind.value.isEmpty ||
                              controller.selectedCustomerKind.value ==
                                  'customer'
                          ? 1.0
                          : 0.5,
                    )),
                const Spacer(),
                Obx(
                  () => UserKind(
                    onTap: () => controller.selectCustomerKind('technical'),
                    color: controller.selectedCustomerKind.value == 'technical'
                        ? Colors.blue
                        : const Color(0xff939DA4),
                    name: S.of(context).technical,
                    image: 'assets/images/technical.png',
                    opacity: controller.selectedCustomerKind.value.isEmpty ||
                            controller.selectedCustomerKind.value == 'technical'
                        ? 1.0
                        : 0.5,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              S.of(context).chooseTheMembershipType2,
              style: Styles.textStyle14,
            ),
            SizedBox(
              height: 125.h,
            ),
            Obx(
              () => controller.selectedCustomerKind.value.isNotEmpty
                  ? CustomButton(
                      title: S.of(context).next,
                      onPressed: () {
                        controller.navigateToSelectedPage();
                      },
                    )
                  : const SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }
}
