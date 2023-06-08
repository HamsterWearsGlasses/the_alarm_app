import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_alarm_app/presentation/theme/color.dart';
import 'package:the_alarm_app/presentation/welcome_screen/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      onPrepairData();
    });
    super.initState();
  }

  Future<void> onPrepairData() async {
    await Future.delayed(const Duration(seconds: 2)).whenComplete(() {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) {
            return const WelcomeScreen();
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: Stack(children: [
          SvgPicture.asset(
            "assets/images/bg_splash_screen.svg",
            fit: BoxFit.cover,
            width: 375.w,
            height: 812.h,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 128.h,
                ),
                Text(
                  "Wakey",
                  style: TextStyle(
                    fontFamily: "Oxygen",
                    fontSize: 56,
                    fontWeight: FontWeight.w700,
                    color: AppColor.textColor,
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
