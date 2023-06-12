import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_alarm_app/common/custom_button.dart';
import 'package:the_alarm_app/common/custom_field.dart';
import 'package:the_alarm_app/common/custom_text_button.dart';
import 'package:the_alarm_app/common/custom_widget.dart';
import 'package:the_alarm_app/presentation/home_screen/home_screen.dart';
import 'package:the_alarm_app/presentation/theme/color.dart';
import 'package:the_alarm_app/repo/model/user_model.dart';
import 'package:the_alarm_app/repo/repo.dart';
import 'package:google_sign_in/google_sign_in.dart';

enum AuthScreenMethod {
  login,
  register,
}

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key, required this.authScreenMethod});

  final AuthScreenMethod authScreenMethod;

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final usernameFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();
  bool hidePassword = true;

  bool loginSuccess = false;
  bool registerSuccess = false;

  bool isLogin = true;

  @override
  void initState() {
    isLogin = widget.authScreenMethod == AuthScreenMethod.login;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor,
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 56.h,
                  ),
                  Text(
                    "Hii There!!",
                    style: TextStyle(
                        fontFamily: "Oxygen",
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: AppColor.textColor),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    height: 40.h,
                    child: Text(
                      isLogin
                          ? "Welcome back you’ve been missed!"
                          : "Welcome to wakey one stop solution for \nhealthy life",
                      softWrap: true,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: TextStyle(
                          fontFamily: "Oxygen",
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColor.textColor),
                    ),
                  ),
                  SizedBox(
                    height: 44.h,
                  ),
                  CustomField(
                    controller: usernameController,
                    focusNode: usernameFocusNode,
                    hintText: "Enter Username",
                    callback: () {},
                  ),
                  SizedBox(height: 24.h),
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
                      child: Icon(
                        Icons.remove_red_eye_rounded,
                        color: AppColor.textColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  SizedBox(
                    height: 36.h,
                    width: 375.w,
                    child: isLogin
                        ? GestureDetector(
                            onTap: () {
                              // TODO: call forgot password
                            },
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
                          )
                        : Text(
                            "By signing up you agree to Terms & conditions of \nWakey app.",
                            softWrap: true,
                            maxLines: 2,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontFamily: "Oxygen",
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColor.textColor),
                          ),
                  ),
                  SizedBox(
                    height: 56.h,
                  ),
                  CustomButton(
                    textButton: isLogin ? "Signin" : "Signup",
                    onPressed: () async {
                      switch (widget.authScreenMethod) {
                        case AuthScreenMethod.login:
                          bool? isPassed = false;

                          /// REGEX
                          if (usernameController.text.isNotEmpty &&
                              passwordController.text.isNotEmpty) {
                            final localUser =
                                await context.read<Repo>().login();
                            if (localUser ==
                                UserModel(
                                  userName: usernameController.text,
                                  password: passwordController.text,
                                )) {
                              isPassed = true;
                            }
                          }
                          if (mounted && isPassed == true) {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (_) {
                                  return const HomeScreen();
                                },
                              ),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                backgroundColor: Colors.purple,
                                padding: EdgeInsets.all(16),
                                duration: Duration(seconds: 2),
                                content: Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Center(
                                    child: Text("Wrong format"),
                                  ),
                                ),
                              ),
                            );
                          }

                          break;
                        case AuthScreenMethod.register:

                          /// REGEX
                          if (usernameController.text.isNotEmpty &&
                              passwordController.text.isNotEmpty) {
                            await context.read<Repo>().register(
                                  UserModel(
                                    userName: usernameController.text,
                                    password: passwordController.text,
                                  ),
                                );
                            if (mounted) {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (_) {
                                    return const AuthScreen(
                                      authScreenMethod: AuthScreenMethod.login,
                                    );
                                  },
                                ),
                              );
                            }
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                backgroundColor: Colors.purple,
                                padding: EdgeInsets.all(16),
                                duration: Duration(seconds: 2),
                                content: Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Center(
                                    child: Text("Invalid username or password"),
                                  ),
                                ),
                              ),
                            );
                          }

                          break;
                      }

                      if (registerSuccess == true) {}
                    },
                  ),
                  SizedBox(
                    height: 58.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 162.w,
                        child: Divider(
                          thickness: 1,
                          color: AppColor.textColor,
                          indent: 18.w,
                          endIndent: 16.w,
                        ),
                      ),
                      Text(
                        "or",
                        style: TextStyle(
                            fontFamily: "Oxygen",
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: AppColor.textColor),
                      ),
                      SizedBox(
                        width: 162.w,
                        child: Divider(
                          thickness: 1,
                          color: AppColor.textColor,
                          indent: 16.w,
                          endIndent: 16.w,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 34.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomWidget(
                        assetsLogo: "assets/images/logo_apple.svg",
                        onPressed: () {},
                      ),
                      CustomWidget(
                          assetsLogo: "assets/images/logo_google.svg",
                          onPressed: () {}),
                      CustomWidget(
                        assetsLogo: "assets/images/logo_facebook.svg",
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 112.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        isLogin
                            ? "Don’t have an account?"
                            : "Already have an account?",
                        style: TextStyle(
                          fontFamily: "Oxygen",
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColor.textColor,
                        ),
                      ),
                      CustomTextButton(
                        textButton: isLogin ? "Signup" : "Signin",
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (_) {
                                return AuthScreen(
                                  authScreenMethod: isLogin
                                      ? AuthScreenMethod.register
                                      : AuthScreenMethod.login,
                                );
                              },
                            ),
                          );
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
