import 'package:flutter/material.dart';
import 'line_bars.dart';
import '../constant.dart';

class MonthOverviewCard extends StatelessWidget {
  const MonthOverviewCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(boxShadow: const [
          BoxShadow(
            color: kPinkColor,
            offset: Offset(0, 7),
            blurRadius: 10,
            spreadRadius: -3.0
          )
        ], color: kPinkColor, borderRadius: BorderRadius.circular(40.0)),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 35.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  LineBars(
                    height: 70.0,
                    lineHeight: 85.0,
                  ),
                  LineBars(
                    height: 42.0,
                    lineHeight: 65.0,
                  ),
                  LineBars(
                    height: 38.0,
                    lineHeight: 85.0,
                  ),
                  LineBars(
                    height: 40.0,
                    lineHeight: 55.0,
                  ),
                  LineBars(
                    height: 60.0,
                    lineHeight: 85.0,
                  ),
                  LineBars(
                    height: 34.0,
                    lineHeight: 68.0,
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                'Month Overview',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              const Text(
                '2 Weeks',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
