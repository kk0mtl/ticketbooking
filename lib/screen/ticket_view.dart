import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:ticketbooking/utils/app_layout.dart';
import 'package:ticketbooking/utils/app_styles.dart';
import 'package:ticketbooking/widgets/chain.dart';
import 'package:ticketbooking/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;

  // uncolored card => isColored를 null로 입력
  final bool? isColored;

  const TicketView({
    super.key,
    required this.ticket,
    this.isColored,
  });

  @override
  Widget build(BuildContext context) {
    final bool? colorInput = isColored;
    final size = AppLayout.getSize(context);
    var textColor = isColored == null ? Colors.white : Colors.black;
    var smallText = isColored == null
        ? Styles.smallTextStyle.copyWith(
            color: textColor,
          )
        : Styles.textStyleWithOpacity.copyWith(fontSize: 14);

    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(GetPlatform.isAndroid == true ? 199 : 201),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(15)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //blue part of ticket
            Container(
              decoration: BoxDecoration(
                  color: isColored == null ? Styles.indigoColor : Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppLayout.getHeight(20)),
                    topRight: Radius.circular(AppLayout.getHeight(20)),
                  )),
              padding: EdgeInsets.fromLTRB(
                  AppLayout.getHeight(20),
                  AppLayout.getHeight(25),
                  AppLayout.getHeight(20),
                  AppLayout.getHeight(15)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style: Styles.titleStyle4.copyWith(
                          color: textColor,
                        ),
                      ),
                      const Spacer(),
                      ThickContainer(
                        isColored: colorInput,
                      ),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: AppLayout.getHeight(24),
                              child: LayoutBuilder(builder:
                                  (BuildContext context,
                                      BoxConstraints constraints) {
                                return ChainLayout(
                                  isColored: colorInput,
                                  width: 3,
                                  height: 1,
                                  time: 7,
                                );
                              }),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: isColored == null
                                      ? Colors.white
                                      : const Color.fromARGB(
                                          255, 114, 208, 216),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ThickContainer(
                        isColored: colorInput,
                      ),
                      const Spacer(),
                      Text(
                        ticket['to']['code'],
                        style: Styles.titleStyle4.copyWith(
                          color: textColor,
                        ),
                      ),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    children: [
                      Text(
                        ticket['from']['name'],
                        style: smallText,
                      ),
                      const Spacer(),
                      Text(
                        '${ticket['flying_time']}',
                        style: isColored == null
                            ? Styles.smallTextStyle.copyWith(
                                color: textColor, fontWeight: FontWeight.w500)
                            : Styles.titleStyle4,
                      ),
                      const Spacer(),
                      Text(
                        ticket['to']['name'],
                        style: smallText,
                      )
                    ],
                  ),
                ],
              ),
            ),

            //top part of orange ticket
            Container(
              color: isColored == null ? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColored == null
                            ? Styles.primaryColor
                            : Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(AppLayout.getHeight(10)),
                          bottomRight: Radius.circular(AppLayout.getHeight(10)),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(AppLayout.getHeight(14)),
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          return ChainLayout(
                            width: 5,
                            height: 1,
                            time: 17,
                            isColored: colorInput,
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColored == null
                            ? Styles.primaryColor
                            : Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(AppLayout.getHeight(10)),
                          bottomLeft: Radius.circular(AppLayout.getHeight(10)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //bottom part of orange ticket
            Container(
              decoration: BoxDecoration(
                  color: isColored == null ? Styles.orangeColor : Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(
                        AppLayout.getHeight(isColored == null ? 20 : 0)),
                    bottomRight: Radius.circular(isColored == null ? 20 : 0),
                  )),
              padding: EdgeInsets.fromLTRB(
                  AppLayout.getHeight(20),
                  AppLayout.getHeight(10),
                  AppLayout.getHeight(20),
                  AppLayout.getHeight(18)),
              child: Column(children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ticket['date'],
                          style: Styles.titleStyle4.copyWith(
                            color: textColor,
                          ),
                        ),
                        Text(
                          'Date',
                          style: smallText,
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          ticket['departure_time'],
                          style: Styles.titleStyle4.copyWith(
                            color: textColor,
                          ),
                        ),
                        Text(
                          'Departure time',
                          style: smallText,
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          ticket['number'].toString(),
                          style: Styles.titleStyle4.copyWith(
                            color: textColor,
                          ),
                        ),
                        Text(
                          'Number',
                          style: smallText,
                        ),
                      ],
                    ),
                  ],
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
