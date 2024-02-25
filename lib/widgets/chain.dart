import 'package:flutter/material.dart';
import 'package:ticketbooking/utils/app_styles.dart';

class ChainLayout extends StatelessWidget {
  final bool? isColored;
  final double width;
  final double height;
  final int time;

  const ChainLayout({
    super.key,
    this.isColored,
    required this.width,
    required this.height,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        print('width : ${constraints.constrainWidth()}');
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(
            //디바이스 화면 크기에 따라 점선의 점 개수 달라짐
            //점은 작은 SizedBox로 구현
            (constraints.constrainWidth() / time).floor(),
            (index) => SizedBox(
              width: width,
              height: height,
              child: DecoratedBox(
                  decoration: BoxDecoration(
                color: isColored == null
                    ? Colors.white
                    : Styles.greyColor.withOpacity(0.5),
              )),
            ),
          ),
        );
      },
    );
  }
}
