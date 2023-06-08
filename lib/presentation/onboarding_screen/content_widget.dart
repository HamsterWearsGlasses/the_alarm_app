import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_alarm_app/presentation/theme/color.dart';

class ContentWidget extends StatelessWidget {
  final String? assetsImage;
  final Widget? titleWidget;
  final String? description;

  const ContentWidget({
    super.key,
    this.assetsImage,
    this.titleWidget,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
          child: assetsImage == null
              ? SizedBox(
                  height: 429.h,
                  width: 375.w,
                )
              : Image.asset(
                  assetsImage!,
                  fit: BoxFit.cover,
                  width: 375.w,
                  height: 429.h,
                ),
        ),
        SizedBox(
          height: 24.h,
        ),
        SizedBox(
          width: 343.w,
          child: titleWidget,
        ),
        SizedBox(
          height: 24.h,
        ),
        SizedBox(
          width: 343.w,
          child: Text(
            description ?? "",
            style: TextStyle(
              fontFamily: "Oxygen",
              fontSize: 14,
              fontWeight: FontWeight.w400,
              height: 1.2,
              color: AppColor.textColor,
            ),
          ),
        ),
      ],
    );
  }
}

/*
RichText(
            text: TextSpan(
              text: "textTitle",
              style: TextStyle(
                fontFamily: "Oxygen",
                fontSize: 24,
                fontWeight: FontWeight.w700,
                height: 1.2,
                color: AppColor.primaryColor,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: "text",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: AppColor.textColor),
                ),
              ],
            ),
          )
*/ 