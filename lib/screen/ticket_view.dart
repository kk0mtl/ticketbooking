import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbooking/utils/app_layout.dart';
import 'package:ticketbooking/utils/app_styles.dart';
import 'package:ticketbooking/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool isColored;
  const TicketView({
    super.key,
    required this.ticket,
    required this.isColored,
  });

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    var textColor = isColored ? Colors.white : Colors.black;
    var smallText = isColored
        ? Styles.smallTextStyle.copyWith(
            color: textColor,
          )
        : Styles.textStyleWithOpacity.copyWith(fontSize: 14);

    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(200),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(20)),
        child: Column(
          children: [
            //blue part of ticket
            Container(
              decoration: BoxDecoration(
                  color: isColored ? Styles.indigoColor : Colors.white,
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
                      const ThickContainer(
                        isColored: true,
                      ),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: AppLayout.getHeight(24),
                              child: LayoutBuilder(builder:
                                  (BuildContext context,
                                      BoxConstraints constraints) {
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(
                                    //디바이스 화면 크기에 따라 점선의 점 개수 달라짐
                                    //점은 작은 SizedBox로 구현
                                    (constraints.constrainWidth() / 7).floor(),
                                    (index) => SizedBox(
                                      width: 3,
                                      height: 1,
                                      child: DecoratedBox(
                                          decoration: BoxDecoration(
                                        color: isColored
                                            ? Colors.white
                                            : Styles.greyColor.withOpacity(0.5),
                                      )),
                                    ),
                                  ),
                                );
                              }),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: isColored
                                      ? Colors.white
                                      : const Color.fromARGB(
                                          255, 114, 208, 216),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const ThickContainer(
                        isColored: true,
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
                        style: isColored
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
              color: isColored ? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColored ? Styles.primaryColor : Colors.white,
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
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                                (constraints.constrainWidth() / 17).floor(),
                                (index) => SizedBox(
                                      width: 5,
                                      height: 1,
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                          color: isColored
                                              ? Colors.white
                                              : Styles.greyColor
                                                  .withOpacity(0.5),
                                        ),
                                      ),
                                    )),
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
                        color: isColored ? Styles.primaryColor : Colors.white,
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
                  color: isColored ? Styles.orangeColor : Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(AppLayout.getHeight(20)),
                    bottomRight: Radius.circular(AppLayout.getHeight(20)),
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
