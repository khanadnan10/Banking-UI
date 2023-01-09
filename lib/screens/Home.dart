import 'package:bankingui/constant.dart';
import 'package:bankingui/screens/All_Expenses.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/Money_transfered.dart';
import '../widgets/Month_overview.dart';
import '../widgets/recent_transaction.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 350.0,
                    decoration: const BoxDecoration(
                      color: kTealColor,
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(60.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(50.0),
                                child: SizedBox(
                                  height: 50.0,
                                  width: 50.0,
                                  child: Image.asset(
                                    'assets/profile.jpg', fit: BoxFit.cover
                                  ),
                                ),
                              ),
                              const Icon(
                                CupertinoIcons.bell,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          const Text(
                            'Wallet(USD)',
                            style: TextStyle(
                              color: kGreyColor,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          const Text(
                            '\$124.723,00',
                            style: TextStyle(
                              color: kGreyColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Chip(
                                backgroundColor: kYellowLightColor,
                                label: Text(
                                  '+16.7%',
                                  style: TextStyle(color: kTealColor),
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                '+14.7%',
                                style: TextStyle(color: kGreyColor),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -110.0,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          MoneyTransferredCard(),
                          MonthOverviewCard(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              // Recent Trasaction section
              const SizedBox(
                height: 100.0,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Recent Transaction',
                          style: TextStyle(
                            fontSize: 24.0,
                            color: kTealdarkColor,
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder:
                                    (context, animation, secondaryAnimation) {
                                  return const AllExpenses();
                                },
                                transitionsBuilder: (context, animation,
                                    secondaryAnimation, child) {
                                  var begin = const Offset(0.0, 1.0);
                                  var end = Offset.zero;
                                  var curve = Curves.ease;

                                  var tween = Tween(begin: begin, end: end)
                                      .chain(CurveTween(curve: curve));

                                  return SlideTransition(
                                    position: animation.drive(tween),
                                    child: child,
                                  );
                                },
                              )),
                          child: const Text(
                            'See all',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 22.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    RecentTransactionCard(
                      title: 'Spotify Sub',
                      subtitle: 'Transfer to Bank',
                      price: '-\$66.00',
                      img: 'assets/spotify.png',
                      date: 'December 6',
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    RecentTransactionCard(
                      title: 'Youtube Premium',
                      subtitle: 'Transfer to Bank',
                      price: '-\$86.00',
                      img: 'assets/youtube.jpg',
                      date: 'December 6',
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
