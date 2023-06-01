import 'package:flutter/material.dart';
import 'package:the_alarm_app/presentation/theme/color.dart';
import 'package:the_alarm_app/presentation/welcome_screen/custom_text_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 56,
            ),
            RichText(
              text: TextSpan(
                text: "Welcome! Set",
                style: TextStyle(
                  fontFamily: "Oxygen",
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: AppColor.textColor,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: "\tWakey",
                    style: TextStyle(color: AppColor.primaryColor),
                  ),
                  const TextSpan(text: "\nto achieve your morning goals")
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "Let’s make your morning more active and healthy.",
              style: TextStyle(
                fontFamily: "Oxygen",
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: AppColor.textColor,
              ),
            ),
            Image.asset("assets/images/morning_transformed.png"),
            const SizedBox(
              height: 12,
            ),
            CustomTextButton(
              textButton: "I want to wake up on time",
              onPressed: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (_) {
                //       return OnboardingScreen();
                //     },
                //   ),
                // );
              },
            ),
            const SizedBox(
              height: 8,
            ),
            CustomTextButton(
              textButton: "I want to build a morning habit",
              onPressed: () {},
            ),
            const SizedBox(
              height: 8,
            ),
            CustomTextButton(
              textButton: "I want to start my day early",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
