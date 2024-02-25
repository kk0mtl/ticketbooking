import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbooking/utils/app_layout.dart';
import 'package:ticketbooking/utils/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  final String title;
  final String subTitle;
  final CrossAxisAlignment align;

  const AppColumnLayout({
    super.key,
    required this.title,
    required this.subTitle,
    required this.align,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: align,
      children: [
        Text(
          title,
          style: Styles.titleStyle4,
        ),
        Gap(AppLayout.getHeight(3)),
        Text(
          subTitle,
          style: Styles.textStyleWithOpacity.copyWith(fontSize: 14),
        ),
      ],
    );
  }
}
