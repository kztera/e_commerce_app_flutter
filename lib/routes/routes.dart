import 'package:zzz_book_store/bindings/forgot_binding.dart';
import 'package:zzz_book_store/bindings/login_binding.dart';
import 'package:zzz_book_store/bindings/main_binding.dart';
import 'package:zzz_book_store/bindings/register_binding.dart';
import 'package:zzz_book_store/bottom_navigation.dart';
import 'package:zzz_book_store/screens/auth/forgot_password.dart';
import 'package:zzz_book_store/screens/auth/login.dart';
import 'package:zzz_book_store/screens/auth/onboarding.dart';
import 'package:zzz_book_store/screens/auth/register.dart';
import 'package:zzz_book_store/screens/auth/reset_password.dart';
import 'package:zzz_book_store/screens/auth/success.dart';
import 'package:zzz_book_store/screens/auth/verify_email.dart';
import 'package:zzz_book_store/screens/auth/verify_otp.dart';
import 'package:get/route_manager.dart';
import 'package:zzz_book_store/screens/author/author_list.dart';
import 'package:zzz_book_store/screens/orders/order_detail.dart';
import 'package:zzz_book_store/screens/products/product_review.dart';
import 'package:zzz_book_store/screens/main/profile.dart';
import 'package:zzz_book_store/screens/products/product_detail.dart';

class Routes {
  static const initial = '/login';
  static const main = '/main';

  static final pages = [
    GetPage(name: '/onboarding', page: () => const OnboardingScreen()),
    GetPage(name: '/login', page: () => const LoginScreen(), binding: LoginBinding()),
    GetPage(name: '/register', page: () => const RegisterScreen(), binding: RegisterBinding()),
    GetPage(name: '/register/verify-email', page: () => const VerifyScreen()),
    GetPage(name: '/register/success', page: () => const VerifySuccessScreen()),
    GetPage(name: '/forgot-password', page: () => const ForgotPasswordScreen(), binding: ForgotBinding()),
    GetPage(name: '/verify-otp', page: () => const VerifyOTPScreen()),
    GetPage(name: '/reset-password', page: () => const ResetPasswordScreen()),
    GetPage(name: '/main', page: () => const BottomNavigation(), binding: MainBinding()),
    GetPage(name: '/profile', page: () => const ProfileScreen()),
    GetPage(name: '/product-detail/:id', page: () => const ProductDetailScreen()),
    GetPage(name: '/product-review', page: () => const ProductReviewScreen()),
    GetPage(name: '/order-detail', page: () => const OrderDetail()),
    GetPage(name: '/author-list', page: () => const AuthorList()),
  ];
}
