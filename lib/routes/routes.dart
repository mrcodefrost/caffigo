import 'package:get/get.dart';

import '../src/auth/view/screens/welcome_screen.dart';

class RouteName {
  static const String welcome = '/welcome';
  // static const String home = '/home';
  // static const String login = '/login';
}

class StorePageRoute {
  static List<GetPage> mainPageRoute = [
    GetPage(name: RouteName.welcome, page: () => const WelcomeScreen()),
    // GetPage(name: RouteName.home, page: () => const HomeScreen()),
    // GetPage(name: RouteName.login, page: () => const LoginScreen()),
  ];
}
