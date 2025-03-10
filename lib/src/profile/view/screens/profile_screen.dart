import 'package:caffigo/src/common/widgets/custom_app_bar.dart';
import 'package:caffigo/src/profile/controller/profile_controller.dart';
import 'package:caffigo/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  final profileCtrl = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: AppBarTitles.profile),
      body: Obx(
        () => Padding(
          padding: const EdgeInsets.only(right: 30, left: 30, top: 30),
          child: Column(
            spacing: 25,
            children: [
              ProfileTextField(
                controller: profileCtrl.editNameController,
                hintText: 'Name',
                labelText: 'Name',
                suffixIcon: IconButton(
                  iconSize: 25,
                  icon: profileCtrl.readOnlyName.value
                      ? const Icon(Icons.edit_outlined)
                      : const Icon(Icons.done),
                  onPressed: () {
                    profileCtrl.readOnlyName.value =
                        !profileCtrl.readOnlyName.value;
                  },
                ),
                prefixIcon: Icons.person_outline,
                readOnly: profileCtrl.readOnlyName.value,
              ),
              ProfileTextField(
                controller: profileCtrl.editPhoneController,
                hintText: 'Phone number',
                labelText: 'Phone number',
                suffixIcon: IconButton(
                  iconSize: 25,
                  icon: profileCtrl.readOnlyPhone.value
                      ? const Icon(Icons.edit_outlined)
                      : const Icon(Icons.done),
                  onPressed: () {
                    profileCtrl.readOnlyPhone.value =
                        !profileCtrl.readOnlyPhone.value;
                  },
                ),
                prefixIcon: Icons.phone_android_outlined,
                readOnly: profileCtrl.readOnlyPhone.value,
              ),
              ProfileTextField(
                controller: profileCtrl.editEmailController,
                hintText: 'Email',
                labelText: 'Email',
                suffixIcon: IconButton(
                  iconSize: 25,
                  icon: profileCtrl.readOnlyEmail.value
                      ? const Icon(Icons.edit_outlined)
                      : const Icon(Icons.done),
                  onPressed: () {
                    profileCtrl.readOnlyEmail.value =
                        !profileCtrl.readOnlyEmail.value;
                  },
                ),
                prefixIcon: Icons.email_outlined,
                readOnly: profileCtrl.readOnlyEmail.value,
              ),
              ProfileTextField(
                controller: profileCtrl.editPasswordController,
                hintText: 'Password',
                labelText: 'Password',
                suffixIcon: IconButton(
                  iconSize: 25,
                  icon: profileCtrl.readOnlyPassword.value
                      ? const Icon(Icons.edit_outlined)
                      : const Icon(Icons.done),
                  onPressed: () {
                    profileCtrl.readOnlyPassword.value =
                        !profileCtrl.readOnlyPassword.value;
                  },
                ),
                prefixIcon: Icons.email_outlined,
                readOnly: profileCtrl.readOnlyPassword.value,
                obscureText: profileCtrl.readOnlyPassword.value,
              ),
              // Spacer(),
              Expanded(
                child: Icon(
                  Icons.qr_code_2_outlined,
                  color: IconColor.lightBlue,
                  size: 330,
                ),
              ),
              // Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileTextField extends StatelessWidget {
  final String? hintText;
  final TextStyle? hintStyle;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final double? height;
  final bool expands;
  final bool? enabled;
  final TextInputAction? textInputAction;
  final bool obscureText;
  final void Function(String)? onChanged;
  final String labelText;
  final Widget? suffixIcon;
  final IconData prefixIcon;
  final bool readOnly;

  const ProfileTextField({
    super.key,
    this.hintText,
    this.hintStyle,
    this.controller,
    this.validator,
    this.keyboardType,
    this.inputFormatters,
    this.height,
    this.expands = false,
    this.enabled,
    this.textInputAction = TextInputAction.unspecified,
    this.obscureText = false,
    this.onChanged,
    this.suffixIcon,
    this.readOnly = false,
    required this.labelText,
    required this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        spacing: 10,
        children: [
          CircleAvatar(
            backgroundColor: BackgroundColor.lighterBlue,
            radius: 25,
            child: Icon(
              prefixIcon,
              color: IconColor.blue,
              size: 25,
            ),
          ),
          Expanded(
            child: TextFormField(
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: TextColor.blue, fontWeight: FontWeight.w600),
              enabled: enabled,
              readOnly: readOnly,
              controller: controller,
              validator: validator,
              keyboardType: keyboardType,
              maxLines: 1,
              textAlignVertical: TextAlignVertical.center,
              inputFormatters: inputFormatters,
              expands: expands,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.transparent,
                hintText: hintText,
                hintStyle: hintStyle ??
                    Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: TextColor.grey,
                          fontWeight: FontWeight.bold,
                        ),
                labelText: labelText,
                labelStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: TextColor.lightGrey, fontWeight: FontWeight.w600),
                suffixIcon: suffixIcon,
                suffixIconColor: IconColor.blue,
                border: InputBorder.none, // <-- Removes the border
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
              ),
              textInputAction: textInputAction,
              obscureText: obscureText,
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}
