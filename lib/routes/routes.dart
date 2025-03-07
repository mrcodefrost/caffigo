import 'package:caffigo/src/auth/view/screens/forgot_password_screen.dart';
import 'package:caffigo/src/auth/view/screens/sign_in_screen.dart';
import 'package:caffigo/src/auth/view/screens/sign_up_screen.dart';
import 'package:caffigo/src/auth/view/screens/verification_screen.dart';
import 'package:caffigo/src/common/screens/bottom_nav_bar.dart';
import 'package:caffigo/src/menu/view/screens/menu_screen.dart';
import 'package:caffigo/src/orders/view/screens/orders_screen.dart';
import 'package:caffigo/src/profile/view/screens/profile_screen.dart';
import 'package:caffigo/src/rewards/view/screens/redeem_screen.dart';
import 'package:caffigo/src/rewards/view/screens/rewards_screen.dart';
import 'package:get/get.dart';
import '../src/auth/view/screens/welcome_screen.dart';

class RouteName {
  static const String welcome = '/welcome';
  static const String signIn = '/signIn';
  static const String signUp = '/signUp';
  static const String forgotPassword = '/forgotPassword';
  static const String verification = '/verification';
  static const String bottomNavbar = '/bottomNavbar';
  static const String cafeMap = '/cafeMap';
  static const String menu = '/menu';
  static const String orderOptions = '/orderOptions';
  static const String coffeeCustomization = '/coffeeCustomization';
  static const String cart = '/cart';
  static const String orderPayment = '/orderPayment';
  static const String orderConfirmed = '/orderConfirmed';
  static const String profile = '/profile';
  static const String rewards = '/rewards';
  static const String redeem = '/redeem';
  static const String orders = '/orders';
}

class StorePageRoute {
  static List<GetPage> mainPageRoute = [
    // 🟢 Welcome & Authentication

    GetPage(
      name: RouteName.welcome,
      page: () => const WelcomeScreen(),
    ),
    GetPage(
      name: RouteName.signIn,
      page: () => SignInScreen(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: RouteName.signUp,
      page: () => const SignUpScreen(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: RouteName.forgotPassword,
      page: () => const ForgotPasswordScreen(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: RouteName.verification,
      page: () => const VerificationScreen(),
      transition: Transition.rightToLeft,
    ),

    // 🟤 Cafe & Menu
    GetPage(
      name: RouteName.bottomNavbar,
      page: () => const BottomNavBar(),
      transition: Transition.rightToLeft,
    ),
    // GetPage(
    //   name: RouteName.cafeMap,
    //   page: () => const CafeMapScreen(),
    //   transition: Transition.fadeIn,
    // ),
    GetPage(
      name: RouteName.menu,
      page: () => const MenuScreen(),
      transition: Transition.rightToLeft,
    ),
    // GetPage(
    //   name: RouteName.coffeeCustomization,
    //   page: () => const CoffeeCustomizationScreen(),
    //   transition: Transition.downToUp,
    // ),
    //
    // // 🔴 Ordering & Payment
    // GetPage(
    //   name: RouteName.orderOptions,
    //   page: () => const OrderOptionsScreen(),
    //   transition: Transition.rightToLeft,
    // ),
    // GetPage(
    //   name: RouteName.cart,
    //   page: () => const CartScreen(),
    //   transition: Transition.rightToLeft,
    // ),
    // GetPage(
    //   name: RouteName.orderPayment,
    //   page: () => const OrderPaymentScreen(),
    //   transition: Transition.rightToLeftWithFade,
    // ),
    // GetPage(
    //   name: RouteName.orderConfirmed,
    //   page: () => const OrderConfirmedScreen(),
    //   transition: Transition.fadeIn,
    // ),
    //
    // // 🔵 Profile & Rewards
    GetPage(
      name: RouteName.profile,
      page: () => const ProfileScreen(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: RouteName.rewards,
      page: () => const RewardsScreen(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: RouteName.redeem,
      page: () => const RedeemScreen(),
      transition: Transition.downToUp,
    ),
    //
    // // 🟠 Orders
    GetPage(
      name: RouteName.orders,
      page: () => OrdersScreen(),
      transition: Transition.rightToLeft,
    ),
  ];
}
