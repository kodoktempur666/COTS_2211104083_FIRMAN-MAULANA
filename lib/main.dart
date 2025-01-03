import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cots/app/modules/login/bindings/login_binding.dart';
import 'package:cots/app/modules/login/views/login_view.dart';
import 'package:cots/app/modules/onboarding/views/onboarding_view.dart';
import 'package:cots/app/design_system/colors/primary_colors.dart';
import 'package:cots/app/modules/main/views/main_view.dart';
import 'package:cots/app/design_system/typography/text_styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Onboarding App',
      theme: ThemeData(
        primaryColor: PrimaryColors.primary,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(

        ),
      ),
      initialRoute: '/onboarding',  // Mengubah rute awal ke halaman onboarding
      getPages: [
        GetPage(
          name: '/onboarding',
          page: () => OnboardingView(),
        ),
        GetPage(
          name: '/login',
          page: () => LoginView(),
          binding: LoginBinding(),
        ),
        GetPage(
          name: '/main',
          page: () => MainPage(),
        ),
      ],
    );
  }
}
