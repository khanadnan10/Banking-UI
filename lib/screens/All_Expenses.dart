import 'package:bankingui/constant.dart';
import 'package:bankingui/widgets/line_bars.dart';
import 'package:bankingui/widgets/recent_transaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color.fromARGB(255, 255, 255, 255), kPinkColor]),
      ),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
            onTap: (() => Navigator.pop(context)),
            child: const Icon(
              Icons.arrow_back_sharp,
              color: Colors.black87,
            ),
          ),
          actions: const [
            Icon(
              CupertinoIcons.bell,
              color: Colors.black87,
            ),
            SizedBox(
              height: 20.0,
              width: 20.0,
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "\$124.723,00",
                                  style: TextStyle(
                                    fontSize: 26.0,
                                    color: kTealdarkColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "Expences",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_drop_down,
                                      color: kPinkColor,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 30.0,
                            ),
                            const Text(
                              "W",
                              style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Container(
                              height: 30.0,
                              width: 30.0,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: kPinkColor,
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              child: const Text(
                                "M",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            const Text(
                              "Y",
                              style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            LineBars2(
                              height: 60.0,
                              lineHeight: 150.0,
                              bgcolor: Colors.pink.shade100,
                              color: kRedColor,
                            ),
                            LineBars2(
                              height: 150.0,
                              lineHeight: 200.0,
                              bgcolor: Colors.yellow.shade100,
                              color: kYellowColor,
                            ),
                            LineBars2(
                              height: 60.0,
                              lineHeight: 80.0,
                              bgcolor: Colors.pink.shade100,
                              color: kRedColor,
                            ),
                            LineBars2(
                              height: 80.0,
                              lineHeight: 180.0,
                              bgcolor: Colors.yellow.shade100,
                              color: kYellowColor,
                            ),
                            LineBars2(
                              height: 40.0,
                              lineHeight: 95.0,
                              bgcolor: Colors.pink.shade100,
                              color: kRedColor,
                            ),
                            LineBars2(
                              height: 158.0,
                              lineHeight: 197.0,
                              bgcolor: Colors.yellow.shade100,
                              color: kYellowColor,
                            ),
                            LineBars2(
                              height: 60.0,
                              lineHeight: 168.0,
                              bgcolor: Colors.pink.shade100,
                              color: kRedColor,
                            ),
                            LineBars2(
                              height: 108.0,
                              lineHeight: 180.0,
                              bgcolor: Colors.yellow.shade100,
                              color: kYellowColor,
                            ),
                            LineBars2(
                              height: 135.0,
                              lineHeight: 160.0,
                              bgcolor: Colors.pink.shade100,
                              color: kRedColor,
                            ),
                            LineBars2(
                              height: 90.0,
                              lineHeight: 189.0,
                              bgcolor: Colors.yellow.shade100,
                              color: kYellowColor,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Jan',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                'Feb',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                'Mar',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                'Apr',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                'May',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                'Jun',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                'July',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                'Aug',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                'Sept',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                'Oct',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 50.0,
                        ),
                        // Chart End here -----
                        RecentTransactionCard2(
                          next: Icons.arrow_upward,
                          color: kPinkColor,
                          percent: 0.86,
                          percentText: '86%',
                          price: '\$478.68.00',
                          subtitle: 'Total Income',
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        RecentTransactionCard2(
                          next: Icons.arrow_downward,
                          color: kYellowColor,
                          percent: 0.46,
                          percentText: '46%',
                          price: '\$268.75.00',
                          subtitle: 'Total Income',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
