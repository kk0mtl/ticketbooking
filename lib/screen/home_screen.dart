import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbooking/utils/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.primaryColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Good Morning',
                            style: Styles.textStyleWithOpacity),
                        Text(
                          'Book Tickets',
                          style: Styles.titleStyle2,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/usericon.png'),
                          )),
                      child: const Text(''),
                    ),
                  ],
                ),
                //Gap을 이용해 간편하게 SizedBox 구현
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 247, 248, 251),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                  child: Row(
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Styles.indigoColor,
                      ),
                      const Gap(5),
                      Text(
                        'Search',
                        style: Styles.textStyleWithOpacity,
                      ),
                    ],
                  ),
                ),
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Upcomming Flights',
                      style: Styles.titleStyle3,
                    ),
                    InkWell(
                      onTap: () {
                        print('view all is tapped');
                      },
                      child: Text(
                        'View All',
                        style: Styles.textStyleWithOpacity,
                      ),
                    ),
                  ],
                ),
                const Gap(5),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
