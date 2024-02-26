import 'package:flutter/material.dart';

Color primary = const Color.fromARGB(255, 235, 234, 240);

class Styles {
  static Color primaryColor = primary;
  static Color textColor = const Color.fromARGB(255, 14, 14, 42);
  static Color orangeColor = const Color(0xfff37b67);
  static Color indigoColor = Colors.indigo;
  static Color greyColor = Colors.blueGrey;
  static Color boxGrey = const Color.fromARGB(255, 224, 229, 233);
  static Color boxWhite = const Color.fromARGB(232, 244, 246, 247);

  static TextStyle smallTextStyle = TextStyle(
    fontSize: 14,
    color: textColor,
    fontWeight: FontWeight.w400,
  );

  static TextStyle textStyle = TextStyle(
    fontSize: 16,
    color: textColor,
    fontWeight: FontWeight.w500,
  );
  static TextStyle textStyleWithOpacity = TextStyle(
    fontSize: 16,
    color: textColor.withOpacity(0.4),
    fontWeight: FontWeight.w500,
  );
  static TextStyle titleStyle1 = TextStyle(
    fontSize: 30,
    color: textColor,
    fontWeight: FontWeight.bold,
  );
  static TextStyle titleStyle2 = TextStyle(
    fontSize: 26,
    color: textColor,
    fontWeight: FontWeight.bold,
  );
  static TextStyle titleStyle3 = TextStyle(
    fontSize: 22,
    color: textColor,
    fontWeight: FontWeight.w600,
  );
  static TextStyle titleStyle4 = TextStyle(
    fontSize: 18,
    color: textColor,
    fontWeight: FontWeight.w500,
  );
}
