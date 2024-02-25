import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbooking/utils/app_layout.dart';
import 'package:ticketbooking/utils/app_styles.dart';

class AppIconText extends StatelessWidget {
  final String textContent;
  final IconData icon;
  const AppIconText({
    super.key,
    required this.icon,
    required this.textContent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(10),
          vertical: AppLayout.getHeight(10)),
      decoration: BoxDecoration(
        color: Styles.boxWhite,
        borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: Styles.greyColor.withOpacity(0.5),
          ),
          Gap(AppLayout.getHeight(10)),
          Text(
            textContent,
            style: Styles.textStyle.copyWith(fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
