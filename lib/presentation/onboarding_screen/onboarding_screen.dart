import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_alarm_app/common/custom_button.dart';
import 'package:the_alarm_app/presentation/home_screen/home_screen.dart';
import 'package:the_alarm_app/presentation/auth_screen/before_login_screen.dart';
import 'package:the_alarm_app/presentation/theme/color.dart';

import 'content_widget.dart';
part "first_content.dart";
part "second_content.dart";
part "third_content.dart";

class OnboardingSreen extends StatefulWidget {
  const OnboardingSreen({super.key});

  @override
  State<OnboardingSreen> createState() => _OnboardingSreenState();
}

class _OnboardingSreenState extends State<OnboardingSreen> {
  int position = 0;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor,
        body: Stack(
          children: [
            PageView(
              controller: pageController,
              onPageChanged: (value) {
                setState(() {
                  position = value;
                });
              },
              children: [
                _firstContent(),
                _secondContent(),
                _thirdContent(),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: position != 2
                  ? Padding(
                      padding: EdgeInsets.only(bottom: 80.h),
                      child: CustomButton(
                        textButton: "Find Out More",
                        onPressed: () {
                          pageController.animateToPage(
                            position + 1,
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.ease,
                          );
                        },
                      ),
                    )
                  : Padding(
                      padding: EdgeInsets.only(bottom: 80.h),
                      child: CustomButton(
                        textButton: "Next",
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) {
                                return const HomeScreen();
                              },
                            ),
                          );
                        },
                      ),
                    ),
            ),
            Positioned(
              right: 16.w,
              top: 56.h,
              child: position != 2
                  ? GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (_) {
                              return const BeforeLogin();
                            },
                          ),
                        );
                      },
                      child: Text(
                        "Skip",
                        style: TextStyle(
                          color: AppColor.textColor,
                          fontFamily: "Oxygen",
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    )
                  : const SizedBox.shrink(),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 160.h),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      radius: 4,
                      backgroundColor: position == 0
                          ? AppColor.darkPurple
                          : AppColor.grayColor,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    CircleAvatar(
                      radius: 4,
                      backgroundColor: position == 1
                          ? AppColor.darkPurple
                          : AppColor.grayColor,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    CircleAvatar(
                      radius: 4,
                      backgroundColor: position == 2
                          ? AppColor.darkPurple
                          : AppColor.grayColor,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
