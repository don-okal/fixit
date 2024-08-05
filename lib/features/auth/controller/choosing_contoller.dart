import 'package:fixit/features/auth/presentation/views/customer/customer_log_in.dart';
import 'package:fixit/features/auth/presentation/views/technical/technical_sign_up.dart';
import 'package:get/get.dart';

class ChoosingController extends GetxController {
  var selectedCustomerKind = ''.obs;

  void selectCustomerKind(String kind) {
    selectedCustomerKind.value = kind;
  }

  void navigateToSelectedPage() {
    if (selectedCustomerKind.value == 'customer') {
      Get.to(() => const CustomerLogIn());
    } else if (selectedCustomerKind.value == 'technical') {
      Get.to(() => const Technical());
    }
  }
}
