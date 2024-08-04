import 'package:get/get.dart';

class RememberMeController extends GetxController {
  var isChecked = false.obs;

  void toggleCheckbox() {
    isChecked.value = !isChecked.value;
  }
}
