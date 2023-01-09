import 'package:flutter/material.dart';
import '../constant.dart';

class MoneyTransferredCard extends StatelessWidget {
  const MoneyTransferredCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(boxShadow: const [
          BoxShadow(
              color: kYellowColor,
              offset: Offset(0, 7),
              blurRadius: 8,
              spreadRadius: -3.0)
        ], color: kYellowColor, borderRadius: BorderRadius.circular(40.0)),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 35.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  CircleAvatar(
                    radius: 28.0,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 25.0,
                      backgroundColor: Colors.white,
                      backgroundImage: Image.asset(
                        'assets/profile.jpg',
                        fit: BoxFit.contain,
                      ).image,
                    ),
                  ),
                  Positioned(
                    top: 30.0,
                    child: CircleAvatar(
                      radius: 28.0,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 25.0,
                        backgroundColor: Colors.white,
                        backgroundImage: Image.asset(
                          'assets/profile.jpg',
                          fit: BoxFit.contain,
                        ).image,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 45.0,
              ),
              const Text(
                'Money Transferred',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kTealColor,
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              const Text(
                '\$480.99',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: kTealColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
