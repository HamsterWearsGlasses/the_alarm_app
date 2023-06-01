import 'package:flutter/material.dart';
import 'package:the_alarm_app/presentation/splash_screen/splash_screen.dart';

class WakeyApp extends StatelessWidget {
  const WakeyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
    );
  }
}
