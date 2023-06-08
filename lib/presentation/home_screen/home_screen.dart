import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:the_alarm_app/common/cupertino_switch.dart';
import 'package:the_alarm_app/common/custom_gradient_text.dart';
import 'package:the_alarm_app/presentation/theme/color.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Padding(
        padding: EdgeInsets.fromLTRB(16.w, 56.h, 16.w, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 56.h,
                  width: 56.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColor.textColor, width: 1.8),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      "assets/images/onboarding1.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 8.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Manas Menon",
                      style: TextStyle(
                        color: AppColor.textColor,
                        fontFamily: "Oxygen",
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: AppColor.textColor,
                        ),
                        Text(
                          "Kolkata",
                          style: TextStyle(
                            color: AppColor.textColor,
                            fontFamily: "Oxygen",
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(
                  flex: 1,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.notifications,
                    color: AppColor.textColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 26.h,
            ),
            Container(
              height: 138.h,
              width: 343.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: AppColor.grayColor),
              child: Stack(
                children: [
                  Container(
                    width: 333.w,
                    padding: const EdgeInsets.only(top: 8, left: 2),
                    child: GradientText(
                      '"',
                      style: const TextStyle(
                        fontSize: 56,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
                      ),
                      gradientType: GradientType.linear,
                      gradientDirection: GradientDirection.ttb,
                      colors: [
                        AppColor.lightPurple,
                        AppColor.darkPurple,
                      ],
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      width: 286.w,
                      height: 50.h,
                      child: Text(
                        "Don’t stop when you are tired STOP when you’re DONE",
                        style: TextStyle(
                          color: AppColor.textColor,
                          fontFamily: "Oxygen",
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              width: 343.w,
              height: 95.h,
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                color: Color(0xFF353535),
              ),
              child: Column(
                children: [
                  SizedBox(
                    width: 343.w,
                    child: const CustomGradientText(
                      gradientText: "Scheduled Alarm",
                    ),
                  ),
                  Row(
                    children: [
                      RichText(
                        text: const TextSpan(
                          text: "5:30 ",
                          style: TextStyle(
                            fontFamily: "Oxygen",
                            fontSize: 32,
                            fontWeight: FontWeight.w700,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: "AM",
                              style: TextStyle(
                                fontFamily: "Oxygen",
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      const CustomCupertinoSwitch(),
                      Image.asset("assets/images/menu_dots_vertical.png"),
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: 343.w,
              height: 40.h,
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
                color: Color(0xFF474747),
              ),
              child: Text(
                "S M T W T F S",
                style: TextStyle(
                  color: AppColor.textColor,
                  fontFamily: "Oxygen",
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            const CustomGradientText(
              gradientText: "My Activity",
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.alarm_on_rounded),
            label: 'Alarm',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Contact',
          ),
        ],
      ),
    );
  }
}
