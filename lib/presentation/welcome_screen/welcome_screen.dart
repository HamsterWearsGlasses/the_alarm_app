import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_alarm_app/presentation/login_screen/before_login_screen.dart';
import 'package:the_alarm_app/presentation/theme/color.dart';
import 'package:the_alarm_app/presentation/welcome_screen/custom_welcome_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 56.h,
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
              SizedBox(
                height: 16.h,
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
              SizedBox(
                height: 12.h,
              ),
              CustomWelcomeButton(
                textButton: "I want to wake up on time",
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (_) {
                        return const BeforeLogin();
                      },
                    ),
                  );
                },
              ),
              SizedBox(
                height: 8.h,
              ),
              CustomWelcomeButton(
                textButton: "I want to build a morning habit",
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (_) {
                        return const BeforeLogin();
                      },
                    ),
                  );
                },
              ),
              SizedBox(
                height: 8.h,
              ),
              CustomWelcomeButton(
                textButton: "I want to start my day early",
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (_) {
                        return const BeforeLogin();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
