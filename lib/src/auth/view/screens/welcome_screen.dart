import 'package:caffigo/routes/routes.dart';
import 'package:caffigo/src/auth/view/widgets/forward_nav_button.dart';
import 'package:caffigo/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.maxFinite,
              color: BackgroundColor.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, // Center content
                children: [
                  SizedBox(height: 40),
                  Icon(Icons.coffee_maker_outlined,
                      size: 170, color: Theme.of(context).colorScheme.surface),
                  const SizedBox(height: 16), // Space between logo and text
                  Text(
                    'Caffigo',
                    style: context.textTheme.headlineLarge!.copyWith(
                      color: TextColor.white,
                      letterSpacing: 4,
                      fontFamily: GoogleFonts.cinzel().fontFamily,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          Expanded(
            child: Column(
              children: [
                Text(
                  'Feel yourself like \n a barista!',
                  style: context.textTheme.headlineMedium!.copyWith(
                    color: TextColor.darkBlue,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 15),
                Text(
                  'Coffee on the go!',
                  style: context.textTheme.bodyLarge!.copyWith(
                    color: TextColor.lightGrey,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 150),
                Padding(
                  padding: const EdgeInsets.only(right: 35.0),
                  child: Align(
                      alignment: Alignment.bottomRight,
                      child: ForwardNavButton(onPressed: () {
                        Get.toNamed(
                          RouteName.signIn,
                        );
                      })),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
