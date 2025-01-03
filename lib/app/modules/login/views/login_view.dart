import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/login_controller.dart';
import '../../../design_system/typography/text_styles.dart';
import '../widgets/costum_button.dart';
import '../widgets/input_field.dart';
import '../../../design_system/colors/primary_colors.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(
              4.0), // Menambahkan sedikit padding jika diperlukan
          child: Image.asset(
            'assets/images/gojek.png', // Ganti dengan path gambar Anda
            fit: BoxFit.contain, // Menjaga ukuran gambar tetap proporsional
          ),
        ),
        centerTitle: true, // Menyusun title di tengah
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: controller.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Login", style: TextStyles.heading1),
              const SizedBox(height: 16),
              Text("Enter your phone number:", style: TextStyles.body2),
              const SizedBox(height: 8),
              InputField(
                controller: controller.phoneController,
                labelText: "Phone Number",
                icon: Icons.phone,
                validator: null,
              ),
              const SizedBox(height: 92),
              CustomButton(
                text: "Login",
                onPressed: controller.submit,
                color: PrimaryColors.secondary,
                textStyle: TextStyle(
                    fontSize: 16,
                    color: PrimaryColors.textPrimary,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
