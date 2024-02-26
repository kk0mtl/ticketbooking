import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbooking/utils/app_layout.dart';
import 'package:ticketbooking/utils/app_styles.dart';
import 'package:ticketbooking/widgets/column_layout.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.primaryColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(30),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(50)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/usericon.png'),
                    )),
              ),
              Gap(AppLayout.getWidth(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Book Tickets',
                    style: Styles.titleStyle2.copyWith(height: 1.1),
                  ),
                  Text(
                    'New-York',
                    style: Styles.textStyleWithOpacity.copyWith(fontSize: 14),
                  ),
                  Gap(AppLayout.getHeight(10)),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getWidth(5),
                        vertical: AppLayout.getHeight(3)),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(20)),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Styles.indigoColor,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        Gap(AppLayout.getWidth(5)),
                        Text(
                          'Premium status',
                          style: Styles.textStyle.copyWith(
                              color: Styles.indigoColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      print('Edit is tapped');
                    },
                    child: Text(
                      'Edit',
                      style:
                          Styles.textStyle.copyWith(color: Styles.indigoColor),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Gap(AppLayout.getHeight(30)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.indigoColor.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                ),
              ),
              Positioned(
                right: -40,
                top: -40,
                child: Transform.rotate(
                  angle: 18,
                  child: Container(
                    padding: EdgeInsets.all(AppLayout.getHeight(30)),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 18,
                        color: const Color.fromARGB(255, 38, 69, 152),
                      ),
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ),
              Container(
                padding:
                    EdgeInsets.symmetric(vertical: AppLayout.getHeight(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      maxRadius: 25,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Styles.indigoColor,
                        size: 30,
                      ),
                    ),
                    Gap(AppLayout.getWidth(10)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'You\'ve got a new award',
                          style:
                              Styles.titleStyle3.copyWith(color: Colors.white),
                        ),
                        Text('You have 150 flights in a year',
                            style:
                                Styles.textStyle.copyWith(color: Colors.white)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Gap(AppLayout.getHeight(20)),
          Text(
            'Accumulated miles',
            style: Styles.titleStyle3,
          ),
          Gap(AppLayout.getHeight(25)),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '192802',
                    style: Styles.titleStyle1
                        .copyWith(fontSize: 36, letterSpacing: 1.5),
                  ),
                ],
              ),
              Gap(AppLayout.getHeight(15)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Miles accrued',
                    style: Styles.textStyleWithOpacity.copyWith(fontSize: 14),
                  ),
                  Text(
                    '23 May 2023',
                    style: Styles.textStyleWithOpacity.copyWith(fontSize: 14),
                  ),
                ],
              ),
              Gap(AppLayout.getHeight(20)),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppColumnLayout(
                    title: '23 042',
                    subTitle: 'Miles',
                    align: CrossAxisAlignment.start,
                  ),
                  AppColumnLayout(
                    title: 'Airline CO',
                    subTitle: 'Received from',
                    align: CrossAxisAlignment.end,
                  ),
                ],
              ),
              Gap(AppLayout.getHeight(20)),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppColumnLayout(
                    title: '24',
                    subTitle: 'Miles',
                    align: CrossAxisAlignment.start,
                  ),
                  AppColumnLayout(
                    title: 'McDonald\'s',
                    subTitle: 'Received from',
                    align: CrossAxisAlignment.end,
                  ),
                ],
              ),
              Gap(AppLayout.getHeight(20)),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppColumnLayout(
                    title: '52 340',
                    subTitle: 'Miles',
                    align: CrossAxisAlignment.start,
                  ),
                  AppColumnLayout(
                    title: 'Exuma',
                    subTitle: 'Received from',
                    align: CrossAxisAlignment.end,
                  ),
                ],
              ),
              Gap(AppLayout.getHeight(25)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'How to get more miles',
                    style:
                        Styles.titleStyle4.copyWith(color: Styles.indigoColor),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
