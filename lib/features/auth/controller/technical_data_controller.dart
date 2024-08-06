import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class TechnicalDataController extends GetxController {
  final frontIdImage = Rx<XFile?>(null);
  final backIdImage = Rx<XFile?>(null);
  final skillCertificateImage = Rx<XFile?>(null); // Optional field
  final personalPhotoImage = Rx<XFile?>(null);
  final criminalRecordImage = Rx<XFile?>(null);
  final nationalIdController = TextEditingController();

  final picker = ImagePicker();
  final isFormValid = false.obs;

  Future<void> pickImage(Rx<XFile?> imageFile) async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      imageFile.value = pickedFile;
    }
    validateForm();
  }

  void validateForm() {
    isFormValid.value = frontIdImage.value != null &&
        backIdImage.value != null &&
        personalPhotoImage.value != null &&
        criminalRecordImage.value != null &&
        nationalIdController.text.isNotEmpty;
  }

  @override
  void onClose() {
    nationalIdController.dispose();
    super.onClose();
  }
}
