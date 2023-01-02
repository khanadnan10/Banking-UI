import 'package:flutter/material.dart';

import '../constant.dart';

class LineBars extends StatelessWidget {
  double? height;
  double? lineHeight;
  LineBars({
    required this.height,
    required this.lineHeight,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 2,
      child: Container(
        height: lineHeight!,
        width: 7.0,
        decoration: BoxDecoration(
          color: Colors.red.shade400,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: height!,
                decoration: BoxDecoration(
                  color: kGreyColor,
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LineBars2 extends StatelessWidget {
  double? height;
  double? lineHeight;
  Color color;
  Color bgcolor;
  LineBars2({
    required this.height,
    required this.lineHeight,
    required this.color,
    required this.bgcolor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 2,
      child: Container(
        height: lineHeight!,
        width: 8.0,
        decoration: BoxDecoration(
          color: bgcolor,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: height!,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
