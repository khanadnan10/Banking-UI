import 'package:bankingui/widgets/percent_indicator.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class RecentTransactionCard extends StatelessWidget {
  String? title;
  String? subtitle;
  String? img;
  String? price;
  String? date;
  RecentTransactionCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.img,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kGreyColor,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: SizedBox(
                    height: 50.0,
                    width: 50.0,
                    child: Image.asset(
                      img!,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title!,
                      style: const TextStyle(
                          fontSize: 16.0, color: kTealdarkColor),
                    ),
                    const SizedBox(
                      height: 3.0,
                    ),
                    Text(
                      subtitle!,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  price!,
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: kTealdarkColor,
                  ),
                ),
                const SizedBox(
                  height: 3.0,
                ),
                Text(
                  date!,
                  style: const TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w400),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class RecentTransactionCard2 extends StatelessWidget {
  String? price;
  String? subtitle;
  double? percent;
  Color? color;
  String? percentText;
  IconData next;

  RecentTransactionCard2({
    required this.color,
    required this.percent,
    required this.percentText,
    required this.price,
    required this.subtitle,
    required this.next,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        decoration: BoxDecoration(
          color: kGreyColor,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: kPinkColor,
                    child: Icon(
                      next,
                      color: kWhiteColor,
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    children: [
                      Text(
                        price!,
                        style: const TextStyle(
                          fontSize: 16.0,
                          color: kTealdarkColor,
                        ),
                      ),
                      const SizedBox(
                        height: 3.0,
                      ),
                      Text(
                        subtitle!,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              ProgreeIndicatorBar(
                color: color!,
                percent: percent!,
                percentText: percentText!,
              )
            ],
          ),
        ),
      ),
    );
  }
}
