import 'package:flutter/cupertino.dart';
import 'package:the_alarm_app/presentation/theme/color.dart';

class CustomCupertinoSwitch extends StatefulWidget {
  const CustomCupertinoSwitch({
    super.key,
  });

  @override
  State<CustomCupertinoSwitch> createState() => _CustomCupertinoSwitchState();
}

class _CustomCupertinoSwitchState extends State<CustomCupertinoSwitch> {
  bool switchValue = true;
  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      value: switchValue,
      activeColor: AppColor.lightPurple,
      onChanged: (bool? value) {
        setState(() {
          switchValue = value ?? false;
        });
      },
    );
  }
}
