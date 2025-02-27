import 'package:caffigo/src/auth/view/screens/welcome_screen.dart';
import 'package:caffigo/theme/light_mode.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'routes/routes.dart';

void main() async {
  initSetup();
  runApp(const MyApp());
}

Future<void> initSetup() async {
  await GetStorage.init(); //keep first
  WidgetsFlutterBinding.ensureInitialized(); //2nd
  // // Plugin must be initialized before using
  // await FlutterDownloader.initialize(
  //     debug:
  //     true, // optional: set to false to disable printing logs to console (default: true)
  //     ignoreSsl:
  //     true // option: set to false to disable working with http links (default: false)
  // );
  // await SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  //   DeviceOrientation.portraitDown
  // ]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const WelcomeScreen(),
      getPages: StorePageRoute.mainPageRoute,
      theme: lightMode,
      // darkTheme: darkMode,
      // themeMode: ThemeController.prefThemeMode(),
    );
  }
}
