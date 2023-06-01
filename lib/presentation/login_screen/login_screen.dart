import 'package:flutter/material.dart';
import 'package:the_alarm_app/common/custom_field.dart';
import 'package:the_alarm_app/presentation/theme/color.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final usernameFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();
  bool hidePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 56,
              ),
              Text(
                "Hii There!!",
                style: TextStyle(
                    fontFamily: "Oxygen",
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: AppColor.textColor),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "Welcome back you’ve been missed!",
                softWrap: true,
                maxLines: 2,
                style: TextStyle(
                    fontFamily: "Oxygen",
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColor.textColor),
              ),
              const SizedBox(
                height: 64,
              ),
              CustomField(
                controller: usernameController,
                focusNode: usernameFocusNode,
                hintText: "Enter Username",
                callback: () {},
              ),
              const SizedBox(height: 24),
              CustomField(
                controller: passwordController,
                focusNode: passwordFocusNode,
                hintText: "Password",
                isHide: hidePassword,
                suffix: GestureDetector(
                  onTap: () {
                    setState(() {
                      hidePassword = !hidePassword;
                    });
                  },
                  child: Icon(Icons.remove_red_eye_rounded),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                width: 328,
                child: Text(
                  "Recover Password?",
                  softWrap: true,
                  maxLines: 2,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontFamily: "Oxygen",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColor.textColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
