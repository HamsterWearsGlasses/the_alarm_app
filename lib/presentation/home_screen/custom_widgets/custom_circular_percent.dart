// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CustomCircularPercentIndicator extends StatefulWidget {
  final Color? linearGradient1;
  final Color? linearGradient2;
  final Color? bgColor;
  final Color? bgColorCircularAvatar;
  final String? imageAssets;
  final double radiusCircularPercent;
  final double radiusCircularAvatar;
  final double percent;
  final double? lineWidget;
  const CustomCircularPercentIndicator({
    Key? key,
    this.linearGradient1,
    this.linearGradient2,
    this.imageAssets,
    required this.percent,
    this.bgColor,
    this.bgColorCircularAvatar,
    required this.radiusCircularPercent,
    required this.radiusCircularAvatar,
    this.lineWidget,
  }) : super(key: key);

  @override
  State<CustomCircularPercentIndicator> createState() =>
      _CustomCircularPercentIndicatorState();
}

class _CustomCircularPercentIndicatorState
    extends State<CustomCircularPercentIndicator> {
  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: widget.radiusCircularPercent,
      percent: widget.percent,
      startAngle: 190,
      lineWidth: widget.lineWidget ?? 5,
      backgroundColor: widget.bgColor ?? const Color(0xFF525252),
      linearGradient: LinearGradient(
        colors: [
          widget.linearGradient1 ?? const Color(0xFFC847F4),
          widget.linearGradient2 ?? const Color(0xFF6E54F7),
        ],
      ),
      center: CircleAvatar(
        radius: widget.radiusCircularAvatar,
        backgroundColor:
            widget.bgColorCircularAvatar ?? const Color(0xFF362831),
        child: Image.asset(
            widget.imageAssets ?? "assets/images/yoga_position.png"),
      ),
    );
  }
}
