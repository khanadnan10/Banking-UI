import 'package:bankingui/constant.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProgreeIndicatorBar extends StatelessWidget {
  double percent;
  String percentText;
  Color color;

  ProgreeIndicatorBar({
    Key? key,
    required this.percent,
    required this.color,
    required this.percentText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      backgroundColor: kWhiteColor,
      radius: 25.0,
      lineWidth: 4.0,
      percent: percent,
      center: Text(percentText),
      progressColor: color,
      animation: true,
    );
  }
}
