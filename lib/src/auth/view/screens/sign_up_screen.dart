import 'package:caffigo/src/auth/view/widgets/forward_nav_button.dart';
import 'package:caffigo/src/common/widgets/custom_app_bar.dart';
import 'package:caffigo/src/common/widgets/custom_text_form_field.dart';
import 'package:caffigo/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                  'Sign up',
                  style: context.textTheme.headlineMedium!.copyWith(
                    color: TextColor.darkBlue,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Create an account here',
                  style: context.textTheme.titleLarge!.copyWith(
                    color: TextColor.lightGrey,
                  ),
                ),
                const SizedBox(height: 50),
                CustomTextFormField(
                  prefixIcon: Icon(
                    Icons.person_outline,
                    color: IconColor.lightBlue,
                  ),
                  hintText: 'Name',
                ),
                const SizedBox(height: 20),
                CustomTextFormField(
                  prefixIcon: Icon(
                    Icons.phone_android_outlined,
                    color: IconColor.lightBlue,
                  ),
                  hintText: 'Mobile Number',
                ),
                const SizedBox(height: 20),
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
                    onPressed: () {},
                    child: Text(
                      'By signing up you agree with our terms of use',
                      style: context.textTheme.bodyMedium!
                          .copyWith(color: TextColor.blue),
                    ),
                  ),
                ),
                Spacer(flex: 2),
                Align(
                    alignment: Alignment.bottomRight,
                    child: ForwardNavButton(onPressed: () {
                      // Get.toNamed(
                      //   // RouteName.signIn,
                      // );
                    })),
                Spacer(flex: 2),
                TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Already a member? ',
                          style: context.textTheme.bodyLarge!.copyWith(
                            color: TextColor.lightGrey,
                          ),
                        ),
                        TextSpan(
                          text: 'Sign in',
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
