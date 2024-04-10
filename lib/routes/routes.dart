import 'package:zzz_book_store/bindings/main_binding.dart';
import 'package:zzz_book_store/bindings/register_binding.dart';
import 'package:zzz_book_store/bottom_navigation.dart';
import 'package:zzz_book_store/screens/auth/forgot_password.dart';
import 'package:zzz_book_store/screens/auth/login.dart';
import 'package:zzz_book_store/screens/auth/onboarding.dart';
import 'package:zzz_book_store/screens/auth/register.dart';
import 'package:zzz_book_store/screens/auth/success.dart';
import 'package:zzz_book_store/screens/auth/verify_email.dart';
import 'package:zzz_book_store/screens/auth/verify_otp.dart';
import 'package:get/route_manager.dart';

class Routes {
  static const initial = '/main';

  static final pages = [
    GetPage(name: '/onboarding', page: () => const OnboardingScreen()),
    GetPage(name: '/login', page: () => const LoginScreen()),
    GetPage(name: '/register', page: () => const RegisterScreen(), binding: RegisterBinding()),
    GetPage(name: '/register/verify-email', page: () => const VerifyScreen()),
    GetPage(name: '/register/success', page: () => const SuccessScreen()),
    GetPage(name: '/forgot-password', page: () => const ForgotPasswordScreen()),
    GetPage(name: '/verify-otp', page: () => const VerifyOTPScreen()),
    GetPage(name: '/main', page: () => const BottomNavigation(), binding: MainBinding()),
  ];
}
