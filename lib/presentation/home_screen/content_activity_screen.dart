part of "home_screen.dart";

class ContentActivityScreen extends StatelessWidget {
  ContentActivityScreen({super.key});

  final outerListChildren = <SliverToBoxAdapter>[
    SliverToBoxAdapter(
      child: SizedBox(
        height: 200,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.w),
              child: Row(
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
            ),
            SizedBox(
              height: 24.h,
            ),
            Container(
              width: 343.w,
              height: 241.h,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF353535),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomGradientText(
                        gradientText: "Today",
                      ),
                      CustomGradientText(
                        gradientText: "10:56 AM",
                        textSize: 18,
                      )
                    ],
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Alarm",
                        style: TextStyle(
                          color: AppColor.textColor,
                          fontFamily: "Oxygen",
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "5:30 AM",
                        style: TextStyle(
                          color: AppColor.textColor,
                          fontFamily: "Oxygen",
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomCircularPercentIndicator(
                  percent: 0.75,
                  radiusCircularPercent: 32,
                  radiusCircularAvatar: 22,
                  lineWidget: 3,
                  linearGradient1: Color(0xFFF147F4),
                  linearGradient2: Color(0xFFF75468),
                ),
                SizedBox(width: 4.w),
                Container(
                  width: 291.w,
                  height: 108.h,
                  decoration: const BoxDecoration(
                    color: Color(0xFF353535),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      bottomLeft: Radius.circular(16),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 291.w,
                  height: 108.h,
                  decoration: const BoxDecoration(
                    color: Color(0xFF353535),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      bottomLeft: Radius.circular(16),
                    ),
                  ),
                ),
                SizedBox(width: 4.w),
                const CustomCircularPercentIndicator(
                  percent: 0.75,
                  radiusCircularPercent: 32,
                  radiusCircularAvatar: 22,
                  lineWidget: 3,
                  linearGradient1: Color(0xFFF147F4),
                  linearGradient2: Color(0xFFF75468),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
    SliverToBoxAdapter(
      child: SizedBox(
        height: 200,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const CustomGradientText(
                      gradientText: "Activity",
                    ),
                  ),
                  SizedBox(
                    width: 40.w,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const CustomGradientText(
                      gradientText: "Streaks",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
          ],
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: outerListChildren);
  }
}
