import 'package:flutter/material.dart';

class CustomLoginButton extends StatelessWidget {
  final String textButton;
  final Color colorButton1;
  final Color colorButton2;
  final VoidCallback onPressed;
  const CustomLoginButton({
    super.key,
    required this.textButton,
    required this.onPressed,
    required this.colorButton1,
    required this.colorButton2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 164,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          // colors: [
          //   AppColor.lightPurple,
          //   AppColor.darkPurple,
          // ],
          colors: [colorButton1, colorButton2],
        ),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(164, 56),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: Text(
          textButton,
          style: const TextStyle(
            fontFamily: "Inter",
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
