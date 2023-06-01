import 'package:flutter/material.dart';
import 'package:the_alarm_app/presentation/theme/color.dart';

class CustomTextButton extends StatelessWidget {
  final String textButton;
  final VoidCallback onPressed;
  const CustomTextButton({
    super.key, required this.textButton, required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      decoration: BoxDecoration(
        color: AppColor.grayColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(343, 56),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              textButton,
              style: const TextStyle(
                fontFamily: "Oxygen",
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Icon(
              Icons.keyboard_arrow_right,
              size: 28,
            ),
          ],
        ),
      ),
    );
  }
}
