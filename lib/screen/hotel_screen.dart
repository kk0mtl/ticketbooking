import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbooking/utils/app_layout.dart';
import 'package:ticketbooking/utils/app_styles.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({
    super.key,
    required this.hotel,
  });

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
        margin: const EdgeInsets.only(top: 20, right: 15),
        width: size.width * 0.6,
        height: AppLayout.getHeight(360),
        decoration: BoxDecoration(
            color: const Color(0xFF5961CF),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,
                blurRadius: 20,
                spreadRadius: 5,
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: AppLayout.getHeight(180),
              decoration: BoxDecoration(
                color: Styles.greyColor,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/${hotel['image']}')),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            const Gap(30),
            Text(
              hotel['place'],
              style: Styles.titleStyle3.copyWith(
                color: const Color(0xFFDFDAF3),
              ),
            ),
            Text(
              hotel['destination'],
              style: Styles.textStyle.copyWith(
                color: Styles.orangeColor,
              ),
            ),
            Text(
              '\$ ${hotel['price']} / night',
              style: Styles.titleStyle1.copyWith(
                color: const Color(0xFFDFDAF3),
              ),
            ),
          ],
        ));
  }
}
