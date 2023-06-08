part of 'onboarding_screen.dart';

Widget _thirdContent() {
  return ContentWidget(
    assetsImage: "assets/images/onboarding3.png",
    titleWidget: RichText(
      text: TextSpan(
        text: "Start a",
        style: TextStyle(
          fontFamily: "Oxygen",
          fontSize: 18,
          fontWeight: FontWeight.w400,
          height: 1.2,
          color: AppColor.textColor,
        ),
        children: <TextSpan>[
          TextSpan(
            text: " healthy life",
            style: TextStyle(
              fontFamily: "Oxygen",
              fontSize: 24,
              fontWeight: FontWeight.w700,
              // height: 1.2,
              color: AppColor.primaryColor,
            ),
          ),
          const TextSpan(
            text:
                " setup your goal get motivated and achieve all you success you deserve.",
          ),
        ],
      ),
    ),
    description: "Hope to take the courage to pursue your dreams.",
  );
}
