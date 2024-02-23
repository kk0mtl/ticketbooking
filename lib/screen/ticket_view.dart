import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbooking/utils/app_layout.dart';
import 'package:ticketbooking/utils/app_styles.dart';
import 'package:ticketbooking/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketView({
    super.key,
    required this.ticket,
  });

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        child: Column(
          children: [
            //blue part of ticket
            Container(
              decoration: BoxDecoration(
                  color: Styles.indigoColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
              padding: const EdgeInsets.fromLTRB(20, 25, 20, 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style: Styles.titleStyle4.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      const Spacer(),
                      const ThickContainer(),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
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
                                    (constraints.constrainWidth() / 9).floor(),
                                    (index) => const SizedBox(
                                      width: 3,
                                      height: 1,
                                      child: DecoratedBox(
                                          decoration: BoxDecoration(
                                        color: Colors.white,
                                      )),
                                    ),
                                  ),
                                );
                              }),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: const Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const ThickContainer(),
                      const Spacer(),
                      Text(
                        ticket['to']['code'],
                        style: Styles.titleStyle4.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    children: [
                      Text(
                        ticket['from']['name'],
                        style: Styles.smallTextStyle.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        '${ticket['flying_time']}',
                        style: Styles.smallTextStyle.copyWith(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                      const Spacer(),
                      Text(
                        ticket['to']['name'],
                        style: Styles.smallTextStyle.copyWith(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),

            //top part of orange ticket
            Container(
              color: Styles.orangeColor,
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Styles.primaryColor,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(14),
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                                (constraints.constrainWidth() / 17).floor(),
                                (index) => const SizedBox(
                                      width: 5,
                                      height: 1,
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                      ),
                                    )),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Styles.primaryColor,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
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
                  color: Styles.orangeColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )),
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 18),
              child: Column(children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ticket['date'],
                          style: Styles.titleStyle4.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Date',
                          style: Styles.smallTextStyle.copyWith(
                            color: Colors.white,
                          ),
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
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Departure time',
                          style: Styles.smallTextStyle.copyWith(
                            color: Colors.white,
                          ),
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
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Number',
                          style: Styles.smallTextStyle.copyWith(
                            color: Colors.white,
                          ),
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
