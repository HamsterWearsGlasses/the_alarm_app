import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:the_alarm_app/presentation/home_screen/custom_widgets/custom_circular_percent.dart';
import 'package:the_alarm_app/presentation/theme/color.dart';

import '../../common/cupertino_switch.dart';
import '../../common/custom_gradient_text.dart';
part "content_home_screen.dart";
part "content_activity_screen.dart";
part "content_alarm_screen.dart";
part "content_profile_screen.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late int index;
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 200),
    vsync: this,
  )..forward();
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: const Offset(-1.5, 0.0),
    end: const Offset(0, 0.0),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.ease,
  ));

  @override
  void initState() {
    index = 0;
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  List<Widget> pages = [
    const ContentHomeScreen(),
    Builder(builder: (context) {
      return Container(
        color: Colors.red,
        height: 600,
        child: ContentActivityScreen(),
      );
    }),
    ContentActivityScreen(),
    const ContentAlarmScreen(),
    const ContentProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Padding(
        padding: EdgeInsets.only(top: 56.h),
        child: SlideTransition(
          position: _offsetAnimation,
          child: pages[index],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        selectedItemColor: AppColor.lightPurple,
        unselectedItemColor: AppColor.textColor,
        elevation: 0,
        iconSize: 32,
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
            index = value;
          });
          _controller.reset();
          _controller.forward();
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_rounded,
            ),
            label: '',
            // backgroundColor: Colors.transparent,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_fire_department,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.alarm_on_sharp,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
