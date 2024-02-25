import 'package:flutter/material.dart';
import 'package:ticketbooking/utils/app_layout.dart';
import 'package:ticketbooking/utils/app_styles.dart';

class ToggleTabs extends StatelessWidget {
  final String firstText;
  final String secondText;
  const ToggleTabs({
    super.key,
    required this.firstText,
    required this.secondText,
  });

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            AppLayout.getHeight(30),
          ),
          color: Styles.boxGrey,
        ),
        child: Row(
          children: [
            //Button of Airline tickets
            Container(
              width: size.width * .44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(AppLayout.getHeight(30)),
                ),
                color: Styles.boxWhite,
              ),
              child: Center(
                  child: Text(
                firstText,
                style: Styles.smallTextStyle,
              )),
            ),

            //Button of Hotels
            Container(
              width: size.width * .44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(AppLayout.getHeight(30)),
                ),
                color: Styles.boxWhite.withOpacity(0.3),
              ),
              child: Center(
                  child: Text(
                secondText,
                style: Styles.smallTextStyle,
              )),
            ),
          ],
        ),
      ),
    );
  }
}
