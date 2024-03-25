import 'package:e_commerce_app_flutter_app/bindings/register_binding.dart';
import 'package:e_commerce_app_flutter_app/screens/login.dart';
import 'package:e_commerce_app_flutter_app/screens/onboarding.dart';
import 'package:e_commerce_app_flutter_app/screens/register.dart';
import 'package:get/route_manager.dart';

class Routes {
  static const initial = '/onboarding';

  static final pages = [
    GetPage(name: '/onboarding', page: () => const OnboardingScreen()),
    GetPage(name: '/login', page: () => const LoginScreen()),
    GetPage(name: '/register', page: () => const RegisterScreen(), binding: RegisterBinding()),
  ];
}
