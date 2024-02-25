import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbooking/utils/app_layout.dart';
import 'package:ticketbooking/utils/app_styles.dart';
import 'package:ticketbooking/widgets/icon_text_widget.dart';
import 'package:ticketbooking/widgets/title_viewall_widget.dart';
import 'package:ticketbooking/widgets/toggle_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.primaryColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(50)),
          Text(
            'What are\nyou looking for?',
            style: Styles.titleStyle1,
          ),
          Gap(AppLayout.getHeight(20)),
          const ToggleTabs(firstText: 'Airline Tickets', secondText: 'Hotels'),
          Gap(AppLayout.getHeight(25)),
          Column(
            children: [
              //Departure box
              const AppIconText(
                icon: Icons.flight_takeoff_rounded,
                textContent: 'Departure',
              ),
              Gap(AppLayout.getHeight(20)),
              //Arrival box
              const AppIconText(
                  icon: Icons.flight_land_rounded, textContent: 'Arrival'),
              Gap(AppLayout.getHeight(25)),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(10),
                    vertical: AppLayout.getHeight(15)),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 33, 49, 224),
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Find Tickets',
                      style: Styles.textStyle.copyWith(color: Styles.boxWhite),
                    ),
                  ],
                ),
              ),
              Gap(AppLayout.getHeight(40)),
              const TitleViewall(
                title: 'Upcomming Flights',
              ),
            ],
          ),
          Gap(AppLayout.getHeight(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(15),
                    vertical: AppLayout.getHeight(15)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(15)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 20,
                        spreadRadius: 5,
                      )
                    ]),
                height: AppLayout.getHeight(400),
                width: size.width * 0.42,
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/flight.jpg',
                          ),
                        ),
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(15)),
                      ),
                    ),
                    Gap(AppLayout.getHeight(15)),
                    Text(
                      '20% discount on the early booking of this flight, \nDon\'t miss out this chance.',
                      style: Styles.titleStyle4
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.all(AppLayout.getHeight(15)),
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(174),
                        decoration: BoxDecoration(
                          color: const Color(0xff34b8b8),
                          borderRadius: BorderRadius.circular(
                            AppLayout.getHeight(18),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discount\nfor survey',
                              style: Styles.titleStyle3.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  height: 1.2),
                            ),
                            Gap(AppLayout.getHeight(15)),
                            Text(
                              'Take the survey\nabout our\nservices and\nget a discount',
                              style: Styles.textStyle.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 18,
                              color: const Color(0xff189999),
                            ),
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(10)),
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(210),
                        padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(15),
                          horizontal: AppLayout.getWidth(15),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              AppLayout.getHeight(20),
                            ),
                            color: const Color.fromARGB(255, 31, 17, 58)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Compare confidently',
                              style: Styles.titleStyle3.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            ),
                            const Icon(
                              Icons.balance_rounded,
                              color: Colors.white,
                              size: 70,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: -45,
                        bottom: -55,
                        child: Transform.rotate(
                          angle: 18,
                          child: Container(
                            padding: EdgeInsets.all(AppLayout.getHeight(30)),
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                width: 18,
                                color: const Color.fromARGB(255, 77, 62, 153),
                              ),
                              color: Colors.transparent,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
