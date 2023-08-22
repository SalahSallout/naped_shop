import 'package:get/get.dart';
import 'package:naped_shop/view/screens/auth/forgot_password_screen.dart';
import 'package:naped_shop/view/screens/auth/login_sreen.dart';
import 'package:naped_shop/view/screens/auth/signup_screen.dart';

import '../logic/bindings/auth_biniding.dart';
import '../logic/bindings/main_binding.dart';
import '../logic/bindings/product_binding.dart';
import '../view/screens/cart_screen.dart';
import '../view/screens/main_screen.dart';
import '../view/screens/payment_screen.dart';
import '../view/screens/welcome_screen.dart';

class AppRoutes {
// initialRoute
  static const welcome = Routes.WelcomeScreen;
  static const loginscreen = Routes.LoginScreen;
  static const signupScreen = Routes.SignupScreen;
  static const mainScreen = Routes.MainScreen;
  static const forgotpasswordScreen = Routes.ForgotPasswordScreen;
  static const cartScreen = Routes.CartScreen;
  static const payMentScreen = Routes.PayMentScreen;

// GetPage

  static final routes = [
    GetPage(
      name: Routes.WelcomeScreen,
      page: () => const WelcomeScreen(),
    ),
    GetPage(
      name: Routes.LoginScreen,
      page: () => LoginScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
        name: Routes.SignupScreen,
        page: () => SignupScreen(),
        binding: AuthBinding()),
    GetPage(name: Routes.MainScreen, page: () => MainScreen(), bindings: [
      AuthBinding(),
      MainBininding(),
    ProductBinding(),
    
    ]),
    GetPage(
      name: Routes.ForgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
    ),
    GetPage(
      name: Routes.CartScreen,
      page: () => CartScreen(),
      bindings: [
        AuthBinding(),
        ProductBinding()
      ]
    ),
    GetPage(
      name: Routes.PayMentScreen,
      page: () => PayMentScreen(),
    )
  ];
}

class Routes {
  static const WelcomeScreen = '/welcomeScreen';
  static const LoginScreen = '/loginScreen';
  static const SignupScreen = '/signupScreen';
  static const MainScreen = '/mainScreen';
  static const ForgotPasswordScreen = '/forgotpasswordScreen';
  static const CartScreen = '/cartScreen';
  static const PayMentScreen = '/payMentScreen';
}
