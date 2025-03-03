import 'package:caffigo/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatelessWidget {
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
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool readOnly;

  const CustomTextFormField({
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
    this.prefixIcon,
    this.readOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: TextFormField(
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(),
        enabled: enabled,
        readOnly: readOnly,
        controller: controller,
        validator: validator,
        keyboardType: keyboardType,
        maxLines: obscureText ? 1 : null, // obscure texts can't be multi-lined
        textAlignVertical: TextAlignVertical.center,
        inputFormatters: inputFormatters,
        expands: expands,
        decoration: InputDecoration(
          filled: true,
          fillColor:
              (readOnly || enabled == false) ? Colors.grey[200] : Colors.white,
          hintText: hintText,
          hintStyle: hintStyle ??
              Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: TextColor.grey,
                    fontWeight: FontWeight.bold,
                  ),
          suffixIcon: suffixIcon,
          prefixIcon: IntrinsicHeight(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(width: 10),
                prefixIcon ??
                    Icon(
                      Icons.error_outline,
                      color: IconColor.lightBlue,
                    ),
                VerticalDivider(
                  color: BorderColor.grey,
                  thickness: 1,
                  endIndent: 6,
                  indent: 10,
                ),
              ],
            ),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: BorderColor.grey,
              width: 1,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: BorderColor.brightBlue,
              width: 1,
            ),
          ),
          errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: BorderColor.red,
              width: 1,
            ),
          ),
          focusedErrorBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: BorderColor.red,
              width: 1,
            ),
          ),
        ),
        textInputAction: textInputAction,
        obscureText: obscureText,
        onChanged: onChanged,
      ),
    );
  }
}
