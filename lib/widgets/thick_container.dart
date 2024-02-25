import 'package:flutter/material.dart';

class ThickContainer extends StatelessWidget {
  final bool isColored;
  const ThickContainer({
    super.key,
    required this.isColored,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: 2.5,
          color: isColored == null
              ? Colors.white
              : const Color.fromARGB(255, 114, 208, 216),
        ),
      ),
    );
  }
}
