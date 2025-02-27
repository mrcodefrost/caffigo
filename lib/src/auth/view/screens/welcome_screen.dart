import 'package:caffigo/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
              color: BackgroundColor.darkBlue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, // Center content
                children: [
                  SizedBox(
                    width: 150, // Prevents logo from being too large
                    child: Image.asset(AppImages.logo, fit: BoxFit.contain),
                  ),
                  const SizedBox(height: 16), // Space between logo and text
                  Text(
                    'Caffigo',
                    style: context.textTheme.titleLarge,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Center text
              children: [
                Text(
                  'Feel yourself like a barista!',
                  style: context.textTheme.bodyLarge!
                      .copyWith(color: TextColor.darkBlue),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
