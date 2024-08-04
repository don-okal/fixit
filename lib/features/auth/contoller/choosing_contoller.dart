import 'package:fixit/features/auth/presentation/views/customer_sign_up.dart';
import 'package:fixit/features/auth/presentation/views/technical_sign_up.dart';
import 'package:get/get.dart';

class ChoosingController extends GetxController {
  var selectedCustomerKind = ''.obs;

  void selectCustomerKind(String kind) {
    selectedCustomerKind.value = kind;
  }

  void navigateToSelectedPage() {
    if (selectedCustomerKind.value == 'customer') {
      Get.to(() => const Customer());
    } else if (selectedCustomerKind.value == 'technical') {
      Get.to(() => const Technical());
    }
  }
}
