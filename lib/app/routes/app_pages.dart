import 'package:get/get.dart';
import '../modules/onboarding/views/onboarding_view.dart';
import '../modules/login/views/login_view.dart';
import '../modules/main/views/main_view.dart';

class AppPages {
  static const String onboarding = '/onboarding';
  static const String login = '/login';
  static const String main = '/main';

  static final routes = [
    GetPage(name: onboarding, page: () => OnboardingView()),
    GetPage(name: login, page: () => LoginView()),
    // GetPage(name: main, page: () => MainPage()),
  ];
}
