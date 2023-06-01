import 'package:flutter/material.dart';
import 'package:the_alarm_app/presentation/theme/color.dart';

class CustomField extends StatelessWidget {
  const CustomField({
    super.key,
    required this.controller,
    required this.focusNode,
    this.hintText,
    this.suffix,
    this.isHide,
    this.callback,
  });

  final TextEditingController controller;
  final FocusNode focusNode;
  final String? hintText;
  final Widget? suffix;
  final bool? isHide;
  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      focusNode: focusNode,
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      onTap: () {
        callback?.call();
      },
      obscureText: isHide ?? false,
      style: TextStyle(
        color: AppColor.textColor,
        fontFamily: "Oxygen",
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: AppColor.textColor,
          fontFamily: "Oxygen",
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        suffixIcon: suffix,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        filled: true,
        fillColor: AppColor.lightGray,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.lightGray),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.primaryColor),
          borderRadius: BorderRadius.circular(8),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.primaryColor),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
