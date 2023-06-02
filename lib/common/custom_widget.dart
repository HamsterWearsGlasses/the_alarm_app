import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_alarm_app/presentation/theme/color.dart';

class CustomWidget extends StatelessWidget {
  final String assetsLogo;
  final VoidCallback onPressed;
  const CustomWidget({
    super.key,
    required this.assetsLogo,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 72,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColor.textColor),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(72, 56),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: SvgPicture.asset(assetsLogo),
      ),
    );
  }
}
