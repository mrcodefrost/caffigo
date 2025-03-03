import 'package:caffigo/routes/routes.dart';
import 'package:caffigo/src/auth/view/widgets/forward_nav_button.dart';
import 'package:caffigo/src/common/widgets/custom_app_bar.dart';
import 'package:caffigo/src/common/widgets/custom_text_form_field.dart';
import 'package:caffigo/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: AppBarTitles.onlyBack,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: Get.height - 100,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                Text(
                  'Forgot password?',
                  style: context.textTheme.headlineMedium!.copyWith(
                    color: TextColor.darkBlue,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Enter your email address',
                  style: context.textTheme.titleLarge!.copyWith(
                    color: TextColor.lightGrey,
                  ),
                ),
                const SizedBox(height: 50),
                CustomTextFormField(
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: IconColor.lightBlue,
                  ),
                  hintText: 'Email Address',
                ),
                Spacer(),
                Align(
                    alignment: Alignment.bottomRight,
                    child: ForwardNavButton(onPressed: () {
                      Get.toNamed(RouteName.verification);
                    })),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
