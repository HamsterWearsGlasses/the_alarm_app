import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_alarm_app/presentation/splash_screen/splash_screen.dart';
import 'package:the_alarm_app/repo/repo.dart';
import 'package:the_alarm_app/repo/repo_impl.dart';

class WakeyApp extends StatelessWidget {
  const WakeyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiRepositoryProvider(
          providers: [
            RepositoryProvider<Repo>(
              create: (context) {
                return RepoImpl()..init();
              },
            ),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: child,
          ),
        );
      },
      child: const SplashScreen(),
    );
  }
}
