import 'package:flutter/material.dart';
import 'package:ticketbooking/utils/app_styles.dart';

class TitleViewall extends StatelessWidget {
  final String title;
  const TitleViewall({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          title,
          style: Styles.titleStyle3,
        ),
        InkWell(
          onTap: () {
            print('view all is tapped');
          },
          child: Text(
            'View All',
            style: Styles.textStyleWithOpacity,
          ),
        ),
      ],
    );
  }
}
