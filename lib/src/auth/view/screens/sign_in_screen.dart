import 'package:caffigo/routes/routes.dart';
import 'package:caffigo/src/auth/controller/auth_controller.dart';
import 'package:caffigo/src/auth/view/widgets/forward_nav_button.dart';
import 'package:caffigo/src/common/widgets/custom_app_bar.dart';
import 'package:caffigo/src/common/widgets/custom_text_form_field.dart';
import 'package:caffigo/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final authCtrl = Get.put(AuthController());

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
                  'Sign in',
                  style: context.textTheme.headlineMedium!.copyWith(
                    color: TextColor.darkBlue,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Welcome back!',
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
                const SizedBox(height: 20),
                CustomTextFormField(
                  prefixIcon: Icon(
                    Icons.lock_outline,
                    color: IconColor.lightBlue,
                  ),
                  hintText: 'Password',
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.visibility_outlined,
                      color: IconColor.lightBlue,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () {
                      Get.toNamed(RouteName.forgotPassword);
                    },
                    child: Text(
                      'Forgot Password?',
                      style: context.textTheme.bodyLarge!.copyWith(
                          color: TextColor.blue,
                          decoration: TextDecoration.underline,
                          decorationColor: TextColor.blue,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
                Spacer(flex: 2),
                Align(
                    alignment: Alignment.bottomRight,
                    child: ForwardNavButton(onPressed: () {
                      Get.offAllNamed(RouteName.bottomNavbar);
                    })),
                Spacer(flex: 2),
                TextButton(
                  onPressed: () {
                    Get.toNamed(RouteName.signUp);
                  },
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'New member? ',
                          style: context.textTheme.bodyLarge!.copyWith(
                            color: TextColor.lightGrey,
                          ),
                        ),
                        TextSpan(
                          text: 'Sign up',
                          style: context.textTheme.bodyLarge!.copyWith(
                            color: TextColor.blue,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
