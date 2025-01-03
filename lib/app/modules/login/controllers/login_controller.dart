import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final phoneController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void submit() {
    if (formKey.currentState!.validate()) {
      // Lakukan aksi login, seperti API call atau routing ke halaman berikutnya
      Get.snackbar(
        "Login Success",
        "Welcome, your phone number is ${phoneController.text}",
        snackPosition: SnackPosition.BOTTOM,
      );
      Get.offNamed('/main');  // Navigasi ke halaman MainPage
    }
  }

  @override
  void onClose() {
    phoneController.dispose();
    super.onClose();
  }
}
