import 'package:caffigo/src/auth/controller/auth_controller.dart';
import 'package:caffigo/src/auth/view/widgets/forward_nav_button.dart';
import 'package:caffigo/src/common/widgets/custom_app_bar.dart';
import 'package:caffigo/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  late final FocusNode focusNode;

  @override
  void initState() {
    super.initState();
    focusNode = FocusNode();
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authCtrl = Get.find<AuthController>();

    // Todo : Refactor this later into theme class
    const focusedBorderColor = BorderColor.brightBlue;
    const fillColor = Color.fromRGBO(243, 246, 249, 0);
    const borderColor = BorderColor.grey;

    final defaultPinTheme = PinTheme(
      width: 50,
      height: 48,
      textStyle: const TextStyle(
        fontSize: 22,
        color: TextColor.darkBlue,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: borderColor, width: 0.5),
      ),
    );

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
                  'Verification',
                  style: context.textTheme.headlineMedium!.copyWith(
                    color: TextColor.darkBlue,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Enter the OTP code we sent you to your email address',
                  style: context.textTheme.titleLarge!.copyWith(
                    color: TextColor.lightGrey,
                  ),
                ),
                const SizedBox(height: 50),
                Directionality(
                  // Specify direction if desired
                  textDirection: TextDirection.ltr,
                  child: Pinput(
                    // You can pass your own SmsRetriever implementation based on any package
                    // in this example we are using the SmartAuth
                    // smsRetriever: smsRetriever,
                    controller: authCtrl.pinController,
                    focusNode: focusNode,
                    defaultPinTheme: defaultPinTheme,
                    separatorBuilder: (index) => const SizedBox(width: 30),
                    hapticFeedbackType: HapticFeedbackType.lightImpact,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'OTP cannot be blank';
                      } else if (value.length != 4) {
                        return 'OTP must be 4 digits';
                      }
                      return null;
                    },
                    onCompleted: (pin) {
                      debugPrint('onCompleted: $pin');
                    },
                    onChanged: (value) {
                      debugPrint('onChanged: $value');
                    },
                    cursor: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 9),
                          width: 22,
                          height: 1,
                          color: focusedBorderColor,
                        ),
                      ],
                    ),
                    focusedPinTheme: defaultPinTheme.copyWith(
                      decoration: defaultPinTheme.decoration!.copyWith(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: focusedBorderColor),
                      ),
                    ),
                    submittedPinTheme: defaultPinTheme.copyWith(
                      decoration: defaultPinTheme.decoration!.copyWith(
                        color: fillColor,
                        borderRadius: BorderRadius.circular(19),
                        border: Border.all(color: focusedBorderColor),
                      ),
                    ),
                    errorPinTheme: defaultPinTheme.copyBorderWith(
                      border: Border.all(color: Colors.redAccent),
                    ),
                  ),
                ),
                Spacer(),
                Align(
                  alignment: Alignment.bottomRight,
                  child: ForwardNavButton(
                    onPressed: () {
                      // Get.toNamed();
                    },
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
