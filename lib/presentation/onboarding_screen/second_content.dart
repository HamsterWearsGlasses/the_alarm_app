part of 'onboarding_screen.dart';

Widget _secondContent() {
  return ContentWidget(
    assetsImage: "assets/images/onboarding2.png",
    titleWidget: RichText(
      text: TextSpan(
        text: "As per research",
        style: TextStyle(
          fontFamily: "Oxygen",
          fontSize: 24,
          fontWeight: FontWeight.w700,
          height: 1.2,
          color: AppColor.primaryColor,
        ),
        children: <TextSpan>[
          TextSpan(
            text:
                " Healthy morning routine makes people Active and Successful.",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: AppColor.textColor),
          ),
        ],
      ),
    ),
    description:
        "Wakey helps to achieve your goals by making you \nwake and active.",
  );
}
