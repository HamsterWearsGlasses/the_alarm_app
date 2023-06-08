import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:the_alarm_app/presentation/theme/color.dart';

class CustomGradientText extends StatelessWidget {
  final String? gradientText;
  const CustomGradientText({
    super.key,
    this.gradientText,
  });

  @override
  Widget build(BuildContext context) {
    return GradientText(
      gradientText!,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
      gradientType: GradientType.linear,
      gradientDirection: GradientDirection.ttb,
      colors: [
        AppColor.lightPurple,
        AppColor.darkPurple,
      ],
    );
  }
}
