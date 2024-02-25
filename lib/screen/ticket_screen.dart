import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbooking/screen/ticket_view.dart';
import 'package:ticketbooking/utils/app_info_list.dart';
import 'package:ticketbooking/utils/app_layout.dart';
import 'package:ticketbooking/utils/app_styles.dart';
import 'package:ticketbooking/widgets/chain.dart';
import 'package:ticketbooking/widgets/column_layout.dart';
import 'package:ticketbooking/widgets/toggle_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool colorInput = false;
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
                  isColored: colorInput,
                ),
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(20),
                    vertical: AppLayout.getHeight(15)),
                margin:
                    EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          title: 'Flutter DB',
                          subTitle: 'Passanger',
                          align: CrossAxisAlignment.start,
                        ),
                        AppColumnLayout(
                          title: '5221 478566',
                          subTitle: 'Passport',
                          align: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(20)),
                      child: ChainLayout(
                        isColored: colorInput,
                        width: 5,
                        height: 1,
                        time: 17,
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          title: '0055 444 77147',
                          subTitle: 'Number of E-ticket',
                          align: CrossAxisAlignment.start,
                        ),
                        AppColumnLayout(
                          title: 'B2SG28',
                          subTitle: 'Booking Code',
                          align: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(20)),
                      child: ChainLayout(
                        isColored: colorInput,
                        width: 5,
                        height: 1,
                        time: 17,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/visa.png',
                                  scale: 13,
                                ),
                                Gap(AppLayout.getWidth(5)),
                                Text(
                                  '*** 2462',
                                  style: Styles.titleStyle4,
                                ),
                              ],
                            ),
                            Gap(AppLayout.getHeight(3)),
                            Text(
                              'Payment Method',
                              style: Styles.textStyleWithOpacity
                                  .copyWith(fontSize: 14),
                            ),
                          ],
                        ),
                        const AppColumnLayout(
                          title: '\$249.99',
                          subTitle: 'Price',
                          align: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Gap(AppLayout.getHeight(1)),
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(15),
                ),
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(15),
                    vertical: AppLayout.getHeight(20)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                  child: BarcodeWidget(
                    data: 'https://github.com/kk0mtl/ticketbooking',
                    barcode: Barcode.code128(),
                    drawText: false,
                    width: double.infinity,
                    color: Styles.textColor,
                    height: 70,
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(30)),
              Container(
                padding: EdgeInsets.only(
                  left: AppLayout.getWidth(15),
                ),
                child: TicketView(
                  ticket: ticketList[0],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
