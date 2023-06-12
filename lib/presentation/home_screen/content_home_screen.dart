part of "home_screen.dart";

class ContentHomeScreen extends StatelessWidget {
  const ContentHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
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
          ),
          SizedBox(
            height: 8.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const CustomCircularPercentIndicator(
                    radiusCircularPercent: 50,
                    percent: 0.6,
                    bgColor: Color(0xFF525252),
                    linearGradient1: Color(0xFFF147F4),
                    linearGradient2: Color(0xFFF75468),
                    radiusCircularAvatar: 34,
                    imageAssets: "assets/images/yoga_position.png",
                    bgColorCircularAvatar: Color(0xFF362830),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    "Yoga",
                    style: TextStyle(
                      color: AppColor.textColor,
                      fontFamily: "Oxygen",
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const CustomCircularPercentIndicator(
                    radiusCircularPercent: 50,
                    percent: 0.3,
                    bgColor: Color(0xFF525252),
                    linearGradient1: Color(0xFFC847F4),
                    linearGradient2: Color(0xFF6E54F7),
                    radiusCircularAvatar: 34,
                    imageAssets: "assets/images/footsteps_sharp.png",
                    bgColorCircularAvatar: Color(0xFF2B283C),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    "Steps",
                    style: TextStyle(
                      color: AppColor.textColor,
                      fontFamily: "Oxygen",
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const CustomCircularPercentIndicator(
                    radiusCircularPercent: 50,
                    percent: 0.6,
                    bgColor: Color(0xFF525252),
                    linearGradient1: Color(0xFFF44747),
                    linearGradient2: Color(0xFFF7AC54),
                    radiusCircularAvatar: 34,
                    imageAssets: "assets/images/calories.png",
                    bgColorCircularAvatar: Color(0xFF362E2B),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    "Calories",
                    style: TextStyle(
                      color: AppColor.textColor,
                      fontFamily: "Oxygen",
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 16.h,
          ),
          Container(
            height: 68.h,
            width: 343.w,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 19.h),
            decoration: BoxDecoration(
              color: const Color(0xFF3C3D3F),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                Image.asset("assets/images/confetti.png"),
                SizedBox(width: 16.w),
                Text(
                  "My Stats",
                  style: TextStyle(
                    color: AppColor.textColor,
                    fontFamily: "Oxygen",
                    fontSize: 24.h,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.keyboard_arrow_right_rounded,
                    color: AppColor.textColor,
                    size: 36,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
