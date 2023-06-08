part of 'onboarding_screen.dart';

Widget _firstContent() {
  return ContentWidget(
    assetsImage: "assets/images/onboarding1.png",
    titleWidget: RichText(
      text: TextSpan(
        text: "Morning habit",
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
                " can make a big difference in your dentire day choose wisely.",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: AppColor.textColor),
          ),
        ],
      ),
    ),
    description:
        "Wakey is based on your behavioral psychology and Artificial intelligence.",
  );
}
