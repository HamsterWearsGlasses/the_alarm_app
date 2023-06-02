import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_alarm_app/presentation/login_screen/before_login_screen.dart';
import 'package:the_alarm_app/presentation/theme/color.dart';

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
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) {
            return const BeforeLogin();
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SvgPicture.asset(
          "assets/images/bg_splash_screen.svg",
          fit: BoxFit.cover,
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 128,
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
    );
  }
}
