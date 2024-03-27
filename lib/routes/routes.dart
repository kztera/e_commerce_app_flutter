import 'package:e_commerce_app_flutter_app/bindings/register_binding.dart';
import 'package:e_commerce_app_flutter_app/screens/forgot_password.dart';
import 'package:e_commerce_app_flutter_app/screens/login.dart';
import 'package:e_commerce_app_flutter_app/screens/onboarding.dart';
import 'package:e_commerce_app_flutter_app/screens/register.dart';
import 'package:e_commerce_app_flutter_app/screens/success.dart';
import 'package:e_commerce_app_flutter_app/screens/verify_email.dart';
import 'package:e_commerce_app_flutter_app/screens/verify_otp.dart';
import 'package:get/route_manager.dart';

class Routes {
  static const initial = '/onboarding';

  static final pages = [
    GetPage(name: '/onboarding', page: () => const OnboardingScreen()),
    GetPage(name: '/login', page: () => const LoginScreen()),
    GetPage(name: '/register', page: () => const RegisterScreen(), binding: RegisterBinding()),
    GetPage(name: '/register/verify-email', page: () => const VerifyScreen()),
    GetPage(name: '/register/success', page: () => const SuccessScreen()),
    GetPage(name: '/forgot-password', page: () => const ForgotPasswordScreen()),
    GetPage(name: '/verify-otp', page: () => const VerifyOTPScreen()),
  ];
}
