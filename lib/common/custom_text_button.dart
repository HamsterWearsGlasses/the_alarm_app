import 'package:flutter/material.dart';
import 'package:the_alarm_app/presentation/theme/color.dart';

class CustomTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String textButton;
  const CustomTextButton({
    super.key,
    required this.onPressed,
    required this.textButton,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        textButton,
        style: TextStyle(
          fontFamily: "Oxygen",
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: AppColor.primaryColor,
        ),
      ),
    );
  }
}
