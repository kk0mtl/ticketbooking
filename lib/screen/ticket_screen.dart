import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbooking/screen/ticket_view.dart';
import 'package:ticketbooking/utils/app_info_list.dart';
import 'package:ticketbooking/utils/app_layout.dart';
import 'package:ticketbooking/utils/app_styles.dart';
import 'package:ticketbooking/widgets/toggle_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.primaryColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              vertical: AppLayout.getHeight(20),
            ),
            children: [
              Gap(
                AppLayout.getHeight(50),
              ),
              Text(
                'Tickets',
                style: Styles.titleStyle1,
              ),
              Gap(AppLayout.getHeight(20)),
              const ToggleTabs(firstText: 'Upcomming', secondText: 'Prevoius'),
              Gap(AppLayout.getHeight(25)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getWidth(15)),
                child: TicketView(
                  ticket: ticketList[0],
                  isColored: false,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
