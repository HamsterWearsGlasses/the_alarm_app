import 'package:flutter/material.dart';
import 'package:the_alarm_app/presentation/login_screen/custom_login_button.dart';
import 'package:the_alarm_app/presentation/theme/color.dart';

class BeforeLogin extends StatelessWidget {
  const BeforeLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            const SizedBox(
              height: 56,
            ),
            SizedBox(
              height: 340,
              width: 343,
              child: Image.asset(
                "assets/images/sun.png",
              ),
            ),
            const SizedBox(
              height: 72,
            ),
            Text(
              "Let’s get connected to wakey for healthy lifestyle",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Oxygen",
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: AppColor.textColor,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              "Explore the most elegant way of achieving your morning routine let’s build a healthy life.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Oxygen",
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColor.textColor,
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            Container(
              height: 56,
              width: 328,
              decoration: BoxDecoration(
                color: AppColor.grayColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  CustomLoginButton(
                    textButton: "Signin",
                    onPressed: () {},
                    colorButton1: AppColor.lightPurple,
                    colorButton2: AppColor.darkPurple,
                  ),
                  CustomLoginButton(
                    textButton: "Signup",
                    onPressed: () {},
                    colorButton1: AppColor.grayColor,
                    colorButton2: AppColor.grayColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
