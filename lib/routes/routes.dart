import 'package:e_commerce_app_flutter_app/bindings/navigation_binding.dart';
import 'package:e_commerce_app_flutter_app/bindings/register_binding.dart';
import 'package:e_commerce_app_flutter_app/bottom_navigation.dart';
import 'package:e_commerce_app_flutter_app/screens/auth/forgot_password.dart';
import 'package:e_commerce_app_flutter_app/screens/auth/login.dart';
import 'package:e_commerce_app_flutter_app/screens/auth/onboarding.dart';
import 'package:e_commerce_app_flutter_app/screens/auth/register.dart';
import 'package:e_commerce_app_flutter_app/screens/auth/success.dart';
import 'package:e_commerce_app_flutter_app/screens/auth/verify_email.dart';
import 'package:e_commerce_app_flutter_app/screens/auth/verify_otp.dart';
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
    GetPage(name: '/main', page: () => const BottomNavigation(), binding: NavigationBinding()),
  ];
}
