import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:the_alarm_app/presentation/theme/color.dart';

class CustomGradientText extends StatelessWidget {
  final String? gradientText;
  final double? textSize;
  final FontWeight? textFontWeight;
  const CustomGradientText({
    super.key,
    this.gradientText,
    this.textSize,
    this.textFontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return GradientText(
      gradientText!,
      style: TextStyle(
        fontSize: textSize ?? 16,
        fontWeight: textFontWeight ?? FontWeight.w700,
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
