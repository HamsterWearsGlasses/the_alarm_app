import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_alarm_app/presentation/login_screen/custom_login_button.dart';
import 'package:the_alarm_app/presentation/login_screen/auth_screen.dart';
import 'package:the_alarm_app/presentation/theme/color.dart';

class BeforeLogin extends StatelessWidget {
  const BeforeLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor,
        body: Column(
          children: [
            SizedBox(
              height: 56.h,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                "assets/images/sun.png",
                fit: BoxFit.cover,
                height: 340.h,
                width: 343.w,
              ),
            ),
            SizedBox(
              height: 72.h,
            ),
            SizedBox(
              height: 60.h,
              width: 343.w,
              child: Text(
                "Let’s get connected to wakey for healthy lifestyle",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Oxygen",
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: AppColor.textColor,
                ),
              ),
            ),
            SizedBox(
              height: 32.h,
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
            SizedBox(
              height: 80.h,
            ),
            Container(
              height: 56.h,
              width: 343.w,
              decoration: BoxDecoration(
                color: AppColor.grayColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  CustomLoginButton(
                    textButton: "Signin",
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (builder) {
                            return const AuthScreen(
                              authScreenMethod: AuthScreenMethod.login,
                            );
                          },
                        ),
                      );
                    },
                    colorButton1: AppColor.lightPurple,
                    colorButton2: AppColor.darkPurple,
                  ),
                  CustomLoginButton(
                    textButton: "Signup",
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (builder) {
                            return const AuthScreen(
                              authScreenMethod: AuthScreenMethod.register,
                            );
                          },
                        ),
                      );
                    },
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
